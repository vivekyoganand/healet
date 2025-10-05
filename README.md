# Healet - Jewelry E-commerce Website Template

![Healet Logo](images/favicon.png)

Healet is a professional, responsive e-commerce website template designed for jewelry stores and boutiques. This template provides a modern, elegant interface to showcase and sell jewelry products online.

## Table of Contents

- [Features](#features)
- [File Structure](#file-structure)
- [Pages](#pages)
- [Technologies Used](#technologies-used)
- [Setup and Installation](#setup-and-installation)
- [Docker Deployment](#docker-deployment)
- [Customization](#customization)
- [License](#license)

## Features

### Core Functionalities

- Responsive design for optimal viewing on all devices
- Product showcase with pricing and "New" label indicators
- Product categorization
- Interactive navigation menu with mobile-friendly overlay
- Newsletter subscription form
- Contact information display
- Social media integration
- Image gallery with lightbox functionality
- Testimonials carousel

### Page-Specific Features

- **Homepage**: Hero slider, featured products, about section, special offers section
- **Shop Page**: Product grid layout with images, titles, and pricing
- **About Page**: Company information with image
- **Blog Page**: Blog posts with images, dates, and excerpts

## File Structure

```
├── index.html            # Homepage
├── about.html            # About page
├── shop.html             # Products/Shop page
├── blog.html             # Blog page
├── Dockerfile            # Container configuration for deployment
├── css/
│   ├── bootstrap.css     # Bootstrap framework styles
│   ├── font-awesome.min.css # Icon library
│   ├── responsive.css    # Mobile responsive styles
│   ├── style.css         # Main stylesheet (compiled)
│   ├── style.css.map     # Source map for style.css
│   └── style.scss        # SCSS source file
├── js/
│   ├── bootstrap.js      # Bootstrap framework scripts
│   ├── custom.js         # Custom JavaScript functionality
│   └── jquery-3.4.1.min.js # jQuery library
├── fonts/                # Font files
└── images/               # Image assets
```

## Pages

### Homepage (`index.html`)

- Hero section with jewelry showcase
- Latest products grid
- About us section
- Special offers section with discounts (10-20% off)
- Blog preview section
- Customer testimonials slider

### Shop Page (`shop.html`)

- Product grid layout
- Product images, names, prices
- "New" tag indicators for recent items
- "View All Products" button

### About Page (`about.html`)

- Company information section
- Team information and story
- Company image

### Blog Page (`blog.html`)

- Blog posts with featured images
- Post dates and titles
- Post excerpts
- "Read More" links

## Technologies Used

- **HTML5**: Page structure and content
- **CSS3/SCSS**: Styling and animations
- **JavaScript**: Interactive features
- **jQuery**: DOM manipulation and simplification
- **Bootstrap 4**: Responsive grid system and components
- **Font Awesome**: Icon library
- **Google Maps API**: Location display (integration ready)
- **Docker/Nginx**: Containerization and web server for deployment

## Setup and Installation

1. **Clone or download** the repository
2. **Open** any HTML file in a web browser to view the template
3. **Customize** content, images, and styles as needed

## Docker Deployment

The project includes a Dockerfile for easy containerization and deployment of the website.

### Prerequisites

- Docker installed on your system ([Get Docker](https://docs.docker.com/get-docker/))

### Building and Running the Docker Image

```bash
# Build the Docker image
docker build -t healet-website .

# Run the container
docker run -d -p 8080:80 healet-website
```

After running these commands, your Healet website will be accessible at http://localhost:8080

### Use Cases for Docker Deployment

- **Production Deployment**: Easily deploy the website to any hosting service that supports Docker containers
- **Consistent Environment**: Ensure the website runs in exactly the same environment across different servers
- **Scalability**: Quickly scale the website by deploying multiple container instances behind a load balancer
- **Testing**: Create isolated testing environments that don't affect your development machine
- **CI/CD Integration**: Integrate with CI/CD pipelines for automated testing and deployment
- **Version Control**: Tag different versions of your website as Docker images for easy rollback if needed

### Docker Configuration Details

The Dockerfile uses the lightweight `nginx:alpine` image to serve the static website files. This configuration:

- Minimizes container size for faster deployment
- Provides efficient serving of static content
- Offers security benefits through the reduced attack surface of Alpine Linux
- Automatically configures Nginx for optimal performance

## Customization

### Changing Content

- Edit the HTML files to update text, images, and links
- Replace product images in the `images` folder
- Update product information in the shop sections

### Styling Changes

- Modify `style.scss` and compile to CSS, or
- Edit `style.css` directly for minor changes
- Update color schemes, fonts, and layout in CSS files

### Functionality Modifications

- Edit `custom.js` for behavioral changes
- Modify form submission handlers as needed for backend integration

## License

This template is based on a design by [Free Html Templates](https://html.design/) and is subject to their licensing terms.
