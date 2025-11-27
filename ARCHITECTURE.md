# Architecture Overview

## Project Structure
The Quiz-For-Genius project is built using ASP.NET Web Forms and follows a modular structure:

- **Pages**: Contains ASPX files for different functionalities (e.g., quizzes, admin panel).
- **Code-Behind Files**: Each ASPX file has a corresponding `.cs` file for server-side logic.
- **Database**: SQL Server database located in `App_Data` folder.
- **Static Assets**: CSS, JavaScript, and images are organized under respective folders.

## Key Components
1. **Frontend**:
   - HTML and CSS for layout and styling.
   - JavaScript for interactivity (e.g., countdown timer).
2. **Backend**:
   - ASP.NET Web Forms for server-side rendering.
   - C# for business logic and database interactions.
3. **Database**:
   - Stores quiz data, user scores, and categories.

## Design Decisions
- **Separation of Concerns**: Logic is separated into code-behind files to maintain clean ASPX pages.
- **Scalability**: Modular design allows easy addition of new quiz categories.
- **Responsiveness**: Ensures compatibility across devices.

## Future Enhancements
- Implementing an API for mobile app integration.
- Adding user authentication and profiles.