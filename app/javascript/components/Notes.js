import React from "react";

const Notes = (props) => {

  const { notes } = props;

  const renderNote = (note) => {
    return (
      <div key={`note-${note.id}`}>
        <h3>{note.title}</h3>
        <a href={`${note.id}`}>show</a>
        <a href={`${note.id}/edit`}>edit</a>
        <a href={`delete/${note.id}`} data-method="delete">
           delete
        </a>
      </div>
    );
  };

  const renderNotes = () => {
    return notes.map((note) => {
      return renderNote(note);
    });
  };

  return (
    <>
      <h1>notes here {notes.length}</h1>
      <a href='/notes/new'>New Note</a>
      {renderNotes()}
    </>
  );

};
export default Notes;