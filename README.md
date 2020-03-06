# img2pdf-action
Action for converting images stored in a folder to pdfs according to the specified page size and saving the output pdfs to the specified folder.

To use this action add following to your workflow file

```yml
- name: Image 2 PDF Action
  uses: sharadcodes/img2pdf-action@v1.0
  with:
    image-folder: 'original_images' # This is a Required field & this folder has original images
    page-size: 'A4' # This is a Required field & it is used to specify the page size of PDFs
    output-folder: 'mypdfs' # This is Required field & this folder will be used to store generated PDFs
```
