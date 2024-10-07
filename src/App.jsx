import { BiSolidDislike, BiSolidLike } from 'react-icons/bi';
import React, { useState } from 'react';

import Button from '@components/Button';

const App = () => {
  const [likes, setLikes] = useState(0);
  const [dislikes, setDislikes] = useState(0);

  return (
    <div className="flex flex-col items-center p-4 bg-gray-100 min-h-screen mx-auto w-full">
      <h1 className="text-2xl text-center font-bold mb-4 text-blue-600">
        Olá Sankhya Dev! <br /> Deixe seu like ou dislike aqui!
      </h1>
      <div className="flex items-center space-x-4 justify-center">
        <div className="flex flex-col w-[200px] h-[200px] items-center justify-center border-2 border-gray-300 rounded-md p-3">
          <BiSolidLike
            size={50}
            onClick={() => setLikes(likes + 1)}
            className="cursor-pointer text-blue-500"
          />
          <p className="mt-4 text-lg">Likes: {likes}</p>
        </div>
        <div className="flex flex-col w-[200px] h-[200px] items-center justify-center border-2 border-gray-300 rounded-md p-3">
          <BiSolidDislike
            size={50}
            onClick={() => setDislikes(dislikes + 1)}
            className="cursor-pointer text-red-500"
          />
          <p className="mt-4 text-lg">Dislikes: {dislikes}</p>
        </div>
      </div>
      <Button
        text="Clique aqui"
        onClick={() => {
          if (likes >= dislikes) {
            alert('Obrigado amigo(a), você é um amigo(a)!');
          } else {
            alert('Você não gostou? Que pena!');
          }
        }}
        className=" w-[416px] mx-auto mt-4 bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded"
      />
    </div>
  );
};

export default App;
