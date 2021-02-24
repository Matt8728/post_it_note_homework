import React from "react";

const NoteNew = () => {
  return (
    <>
      <h1>New Note</h1>
      <form action='/notes' method='post'>
        <p>Title</p>
        <input name='note[title]' />
        <p>Description </p>
        <input name='note[description]' />
        <br />
        <button type="submit">add</button>
      </form>
    </>
  );
};
export default NoteNew;