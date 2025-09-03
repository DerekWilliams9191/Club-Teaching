# Markdown Features Demonstration

Markdown is a lightweight markup language that converts to HTML. It's designed to be readable in plain text while offering rich formatting possibilities.

## Text Formatting

**Bold text** uses double asterisks or double underscores  
_Italic text_ uses single asterisks or underscores  
**_Bold and italic_** combines both  
~~Strikethrough~~ uses double tildes  
`Inline code` uses backticks

## Headers

Use 1-6 hash symbols for different header levels:

# H1 - Main Title

## H2 - Section Header

### H3 - Subsection

#### H4 - Sub-subsection

##### H5 - Minor heading

###### H6 - Smallest heading

## Lists

### Unordered Lists

- First item
- Second item
  - Nested item
  - Another nested item
- Third item

### Ordered Lists

1. First step
1. Second step
   1. Sub-step A
   2. Sub-step B
1. Third step

### Task Lists

- [x] Completed task
- [ ] Pending task
- [ ] Another pending task

## Links and Images

[Link text](https://example.com)  
[Link with title](https://example.com "Hover text appears here")

![Alt text for image](https://via.placeholder.com/300x200)

## Code Blocks

Inline code: `console.log("Hello World")`

Fenced code blocks with syntax highlighting:

```javascript
function greetUser(name) {
  return `Hello, ${name}! Welcome to Markdown.`;
}

const message = greetUser("Developer");
console.log(message);
```

```python
def calculate_fibonacci(n):
    if n <= 1:
        return n
    return calculate_fibonacci(n-1) + calculate_fibonacci(n-2)

print(f"10th Fibonacci number: {calculate_fibonacci(10)}")
```

## Tables

| Feature | Basic | Pro      | Enterprise |
| ------- | ----- | -------- | ---------- |
| Users   | 1     | 10       | Unlimited  |
| Storage | 1GB   | 100GB    | 1TB        |
| Support | Email | Priority | Dedicated  |
| Price   | Free  | $10/mo   | $50/mo     |

## Blockquotes

> This is a blockquote. It's useful for highlighting important information or quotes from other sources.
>
> You can have multiple paragraphs in blockquotes.
>
> > And even nested blockquotes for deeper emphasis.

## Horizontal Rules

Three or more hyphens, asterisks, or underscores create horizontal rules:

---

## Advanced Features

### Definition Lists

Term 1
: Definition for term 1

Term 2  
: Definition for term 2
: Additional definition for term 2

### Footnotes

This text has a footnote[^1] and another one[^note].

[^1]: This is the first footnote.
[^note]: This is a named footnote with more detail.

### Line Breaks and Paragraphs

End a line with two spaces for a line break  
Like this line break above.

Leave a blank line between paragraphs.

This creates a new paragraph with proper spacing.

## Escaping Characters

Use backslashes to escape special characters:

\*This won't be italic\*  
\`This won't be code\`  
\# This won't be a header

## Mathematical Expressions

Many Markdown processors support LaTeX math:

Inline math: $E = mc^2$

Block math:

$$
\sum_{i=1}^{n} x_i = x_1 + x_2 + \cdots + x_n
$$

## HTML Integration

<details>
<summary>Click to expand</summary>

Markdown allows HTML tags for advanced formatting:

<div style="background: #f0f0f0; padding: 10px; border-radius: 5px;">
This is HTML embedded in Markdown
</div>

</details>

---

## Pro Tips

1. **Preview is essential**: Always preview your Markdown to ensure it renders correctly
2. **Consistent spacing**: Be consistent with spacing around headers and lists
3. **Platform variations**: Different platforms may support different features
4. **Semantic meaning**: Use headers for structure, not just styling
5. **Accessibility**: Always include alt text for images

Remember: The beauty of Markdown lies in its simplicity and readability in plain text form while providing powerful formatting capabilities when rendered.
