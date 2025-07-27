import SwiftUI

struct LocalStorageView: View {
    @State private var newNote = ""
    @State private var notes: [Note] = []

    let notesKey = "saved_notes"

    var body: some View {
        VStack {
            HStack {
                TextField("Enter note", text: $newNote)
                    .textFieldStyle(.roundedBorder)

                Button("Add") {
                    addNote()
                }
                .disabled(newNote.isEmpty)
            }
            .padding()

            List {
                ForEach(notes) { note in
                    VStack(alignment: .leading) {
                        Text(note.text)
                        Text(note.date.formatted(date: .abbreviated, time: .shortened))
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                }
                .onDelete(perform: deleteNote)
            }
        }
        .navigationTitle("User Defaults Notes")
        .onAppear(perform: loadNotes)
    }

    func addNote() {
        let note = Note(id: UUID(), text: newNote, date: Date())
        notes.append(note)
        newNote = ""
        saveNotes()
    }

    func deleteNote(at offsets: IndexSet) {
        notes.remove(atOffsets: offsets)
        saveNotes()
    }

    func saveNotes() {
        if let encoded = try? JSONEncoder().encode(notes) {
            UserDefaults.standard.set(encoded, forKey: notesKey)
        }
    }

    func loadNotes() {
        if let data = UserDefaults.standard.data(forKey: notesKey),
           let savedNotes = try? JSONDecoder().decode([Note].self, from: data) {
            notes = savedNotes
        }
    }
}
