import React, { useState } from 'react';
import ReactMarkdown from 'react-markdown';
import React from 'react';
import ReactDOM from 'react-dom';
import MarkdownEditor from './MarkdownEditor';
const MarkdownEditor = () => {
    const [markdown, setMarkdown] = useState('type markdown here');
    const handleChange = (e) => {
        setMarkdown(e.target.value);
    };
    return (
        <div>
            <textarea
                value={markdown}
                onChange={handleChange}
                rows="10"
                cols="50"
            />
            <div>
                <ReactMarkdown>{markdown}</ReactMarkdown>
            </div>
        </div>
    );
};
export default MarkdownEditor;
ReactDOM.render(
    <React.StrictMode>
        <MarkdownEditor />
    </React.StrictMode>,
    document.getElementById('root')
);
