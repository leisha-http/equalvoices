<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>EqualVoices | Story Sharing & Legal Empowerment</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        :root {
            --primary: #4f46e5;
            --secondary: #10b981;
            --dark: #1f2937;
            --light: #f3f4f6;
        }

        .hero-gradient {
            background: linear-gradient(135deg, var(--primary) 0%, var(--secondary) 100%);
        }

        .story-card {
            transition: all 0.3s ease;
        }

        .story-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.1);
        }

        .mentor-card {
            transition: all 0.3s ease;
        }

        .mentor-card:hover {
            border-color: var(--primary);
        }

        .tab-content {
            display: none;
        }

        .tab-content.active {
            display: block;
            animation: fadeIn 0.5s ease;
        }

        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }

        .resource-category {
            border-left: 4px solid var(--primary);
        }

        /* High Contrast Mode */
        body.high-contrast {
            background-color: #000 !important;
            color: #FFF !important;
        }
        body.high-contrast .bg-gray-50 {
            background-color: #000 !important;
        }
        body.high-contrast .bg-white {
            background-color: #000 !important;
            color: #FFF !important;
        }
        body.high-contrast .text-gray-900 {
            color: #FFF !important;
        }
        body.high-contrast .text-gray-600,
        body.high-contrast .text-gray-500 {
            color: #E0E0E0 !important;
        }
        body.high-contrast .shadow-md,
        body.high-contrast .shadow-sm {
            box-shadow: none !important;
            border: 1px solid #FFF;
        }
        body.high-contrast .border-gray-200 {
            border-color: #FFF !important;
        }
        body.high-contrast .hero-gradient {
            background: #000 !important;
            border-bottom: 2px solid #FFF;
        }
        body.high-contrast button,
        body.high-contrast a.bg-indigo-600 {
            background-color: #FFF !important;
            color: #000 !important;
            border: 1px solid #FFF;
        }
        body.high-contrast a.border-indigo-500,
        body.high-contrast .text-indigo-600 {
            color: #00FFFF !important; /* Cyan for primary accents */
            border-color: #00FFFF !important;
        }
        body.high-contrast .text-green-600 {
            color: #00FF00 !important; /* Bright green */
        }
        body.high-contrast .text-purple-600 {
            color: #FF00FF !important; /* Magenta */
        }
        body.high-contrast .bg-indigo-100 {
            background-color: #333 !important;
            color: #00FFFF !important;
        }
        body.high-contrast .bg-green-100 {
            background-color: #333 !important;
            color: #00FF00 !important;
        }
        body.high-contrast .bg-purple-100 {
            background-color: #333 !important;
            color: #FF00FF !important;
        }
        body.high-contrast .bg-amber-100 {
            background-color: #333 !important;
            color: #FFFF00 !important;
        }
        body.high-contrast .bg-blue-100 {
            background-color: #333 !important;
            color: #00FFFF !important;
        }
        body.high-contrast .bg-pink-100 {
            background-color: #333 !important;
            color: #FF00FF !important;
        }
        body.high-contrast .fa-star {
            color: #FFFF00 !important;
        }
        body.high-contrast .hover\:bg-indigo-50:hover,
        body.high-contrast .hover\:bg-gray-100:hover {
            background-color: #333 !important;
        }
        body.high-contrast select {
            background-color: #000 !important;
            color: #FFF !important;
            border-color: #FFF !important;
        }
        body.high-contrast .block {
             border-color: #FFF !important;
        }

        /* Mobile optimizations */
        @media (max-width: 640px) {
            .mobile-stack {
                flex-direction: column;
            }
            .mobile-full-width {
                width: 100%;
            }
            .mobile-padding {
                padding: 1.5rem 1rem;
            }
            .mobile-text-center {
                text-align: center;
            }
            .mobile-margin-bottom {
                margin-bottom: 1.5rem;
            }
            .mobile-no-hover {
                transform: none !important;
                box-shadow: none !important;
            }
        }
    </style>
</head>
<body class="bg-gray-50 font-sans">
    <a href="#main-content" class="sr-only focus:not-sr-only focus:absolute focus:top-0 focus:left-0 focus:z-50 focus:p-3 focus:bg-white focus:text-indigo-600">Skip to main content</a>

    <nav class="bg-white shadow-md sticky top-0 z-10" role="navigation" aria-label="Main navigation">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between h-16">
                <div class="flex items-center">
                    <div class="flex-shrink-0 flex items-center">
                        <span class="text-xl font-bold text-indigo-600">EqualVoices</span>
                    </div>
                    <div class="hidden sm:ml-6 sm:flex sm:space-x-8" role="menubar">
                        <a href="#" class="border-indigo-500 text-gray-900 inline-flex items-center px-1 pt-1 border-b-2 text-sm font-medium" data-tab="home" role="menuitem" aria-current="page">Home</a>
                        <a href="#" class="border-transparent text-gray-500 hover:border-gray-300 hover:text-gray-700 inline-flex items-center px-1 pt-1 border-b-2 text-sm font-medium" data-tab="stories" role="menuitem">Stories</a>
                        <a href="#" class="border-transparent text-gray-500 hover:border-gray-300 hover:text-gray-700 inline-flex items-center px-1 pt-1 border-b-2 text-sm font-medium" data-tab="mentors" role="menuitem">Mentors</a>
                        <a href="#" class="border-transparent text-gray-500 hover:border-gray-300 hover:text-gray-700 inline-flex items-center px-1 pt-1 border-b-2 text-sm font-medium" data-tab="resources" role="menuitem">Resources</a>
                    </div>
                </div>
                <div class="hidden sm:ml-6 sm:flex sm:items-center space-x-4" id="auth-buttons">
                    <button id="login-btn" class="px-4 py-2 rounded-md text-indigo-600 hover:bg-indigo-50">Log In</button>
                    <button id="signup-btn" class="bg-indigo-600 hover:bg-indigo-700 text-white px-4 py-2 rounded-md">Sign Up</button>
                </div>
                <div class="flex items-center sm:hidden">
                    <button type="button" id="mobile-menu-button" class="inline-flex items-center justify-center p-2 rounded-md text-gray-400 hover:text-gray-500 hover:bg-gray-100 focus:outline-none focus:ring-2 focus:ring-inset focus:ring-indigo-500" aria-controls="mobile-menu" aria-expanded="false">
                        <span class="sr-only">Open main menu</span>
                        <i class="fas fa-bars"></i>
                    </button>
                </div>
            </div>
        </div>

        <div class="sm:hidden hidden" id="mobile-menu">
            <div class="pt-2 pb-3 space-y-1" role="menu" aria-orientation="vertical">
                <a href="#" class="bg-indigo-50 border-indigo-500 text-indigo-700 block pl-3 pr-4 py-2 border-l-4 text-base font-medium" data-tab="home" role="menuitem" aria-current="page">Home</a>
                <a href="#" class="border-transparent text-gray-500 hover:bg-gray-50 hover:border-gray-300 hover:text-gray-700 block pl-3 pr-4 py-2 border-l-4 text-base font-medium" data-tab="stories" role="menuitem">Stories</a>
                <a href="#" class="border-transparent text-gray-500 hover:bg-gray-50 hover:border-gray-300 hover:text-gray-700 block pl-3 pr-4 py-2 border-l-4 text-base font-medium" data-tab="mentors" role="menuitem">Mentors</a>
                <a href="#" class="border-transparent text-gray-500 hover:bg-gray-50 hover:border-gray-300 hover:text-gray-700 block pl-3 pr-4 py-2 border-l-4 text-base font-medium" data-tab="resources" role="menuitem">Resources</a>
                <div class="mt-4 px-4 space-y-2">
                    <button class="w-full text-left px-4 py-2 rounded-md text-indigo-600 hover:bg-indigo-50">Log In</button>
                    <button class="w-full bg-indigo-600 hover:bg-indigo-700 text-white px-4 py-2 rounded-md">Sign Up</button>
                </div>
            </div>
        </div>
    </nav>

    <div class="absolute top-4 right-4 z-20 flex space-x-2">
        <button id="high-contrast-toggle" class="p-2 border rounded-md text-sm bg-white shadow-sm" aria-label="Toggle high contrast mode">
            <i class="fas fa-adjust"></i>
        </button>
    </div>

    <main class="pb-16" id="main-content">
        <div class="tab-content active" id="home-tab" role="tabpanel" aria-labelledby="home-tab-link">
            <section class="hero-gradient text-white pt-16">
                <div class="max-w-7xl mx-auto px-4 py-16 sm:px-6 lg:px-8">
                    <div class="grid md:grid-cols-2 gap-8 items-center">
                        <div>
                            <h1 class="text-4xl font-bold tracking-tight sm:text-5xl lg:text-6xl mb-4">Amplify Your Voice</h1>
                            <p class="text-lg md:text-xl mb-8">Share your story, find mentorship, and access legal resources in a supportive community dedicated to empowerment and justice.</p>
                            <div class="flex flex-col sm:flex-row gap-4">
                                <button id="share-story-btn" class="bg-white text-indigo-600 hover:bg-gray-100 px-6 py-3 rounded-md text-lg font-semibold">Share Your Story</button>
                                <button class="bg-transparent border-2 border-white hover:bg-white hover:text-indigo-600 px-6 py-3 rounded-md text-lg font-semibold">Find a Mentor</button>
                            </div>
                        </div>
                        <div class="hidden md:block">
                            <img src="https://placehold.co/600x400/EEF2FF/4F46E5?text=Empowerment" alt="Diverse group of people collaborating around a table with legal documents and laptops" class="rounded-lg shadow-xl">
                        </div>
                    </div>
                </div>
            </section>

            <section class="py-12 bg-white">
                <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                    <h2 class="text-3xl font-bold text-center text-gray-900 mb-12">How EqualVoices Empowers You</h2>
                    <div class="grid md:grid-cols-3 gap-8">
                        <div class="text-center p-6 rounded-lg bg-gray-50 story-card">
                            <div class="mx-auto flex items-center justify-center h-12 w-12 rounded-full bg-indigo-100 text-indigo-600 mb-4">
                                <i class="fas fa-share-alt text-xl"></i>
                            </div>
                            <h3 class="text-lg font-medium text-gray-900 mb-2">Share Your Story</h3>
                            <p class="text-gray-600">Connect with others by sharing your experiences in a safe, supportive environment.</p>
                        </div>
                        <div class="text-center p-6 rounded-lg bg-gray-50 story-card">
                            <div class="mx-auto flex items-center justify-center h-12 w-12 rounded-full bg-green-100 text-green-600 mb-4">
                                <i class="fas fa-hands-helping text-xl"></i>
                            </div>
                            <h3 class="text-lg font-medium text-gray-900 mb-2">Find Mentorship</h3>
                            <p class="text-gray-600">Get matched with experienced legal professionals who can guide you through challenges.</p>
                        </div>
                        <div class="text-center p-6 rounded-lg bg-gray-50 story-card">
                            <div class="mx-auto flex items-center justify-center h-12 w-12 rounded-full bg-purple-100 text-purple-600 mb-4">
                                <i class="fas fa-gavel text-xl"></i>
                            </div>
                            <h3 class="text-lg font-medium text-gray-900 mb-2">Access Resources</h3>
                            <p class="text-gray-600">Find curated legal information and tools to help navigate complex systems.</p>
                        </div>
                    </div>
                </div>
            </section>

            <section class="py-12 bg-gray-50">
                <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                    <div class="flex justify-between items-center mb-8">
                        <h2 class="text-2xl font-bold text-gray-900">Recent Community Stories</h2>
                        <a href="#" class="text-indigo-600 hover:underline" data-tab="stories">View all stories →</a>
                    </div>

                    <div class="grid md:grid-cols-3 gap-6">
                        <div class="bg-white rounded-lg shadow-sm overflow-hidden story-card">
                            <div class="p-5">
                                <div class="flex items-center mb-3">
                                    <img src="https://placehold.co/40x40/CAF2F4/000000?text=AM" alt="User avatar" class="rounded-full mr-3">
                                    <div>
                                        <h4 class="font-medium">Alex M.</h4>
                                        <p class="text-gray-500 text-sm">May 15, 2023</p>
                                    </div>
                                </div>
                                <h3 class="font-bold mb-2">Overcoming Workplace Discrimination</h3>
                                <p class="text-gray-600 text-sm mb-3">How I challenged unfair treatment and found support through this community...</p>
                                <div class="flex flex-wrap">
                                    <span class="text-xs bg-indigo-100 text-indigo-800 px-2 py-1 rounded-full mr-2 mb-2">Workplace</span>
                                    <span class="text-xs bg-green-100 text-green-800 px-2 py-1 rounded-full mr-2 mb-2">Success</span>
                                </div>
                            </div>
                        </div>

                        <div class="bg-white rounded-lg shadow-sm overflow-hidden story-card">
                            <div class="p-5">
                                <div class="flex items-center mb-3">
                                    <img src="https://placehold.co/40x40/C4E0F4/000000?text=JR" alt="User avatar" class="rounded-full mr-3">
                                    <div>
                                        <h4 class="font-medium">Jamie R.</h4>
                                        <p class="text-gray-500 text-sm">June 2, 2023</p>
                                    </div>
                                </div>
                                <h3 class="font-bold mb-2">Navigating the Immigration System</h3>
                                <p class="text-gray-600 text-sm mb-3">Our family's journey through the complex process and the mentors who helped...</p>
                                <div class="flex flex-wrap">
                                    <span class="text-xs bg-amber-100 text-amber-800 px-2 py-1 rounded-full mr-2 mb-2">Immigration</span>
                                    <span class="text-xs bg-blue-100 text-blue-800 px-2 py-1 rounded-full mr-2 mb-2">Family</span>
                                </div>
                            </div>
                        </div>

                        <div class="bg-white rounded-lg shadow-sm overflow-hidden story-card">
                            <div class="p-5">
                                <div class="flex items-center mb-3">
                                    <img src="https://placehold.co/40x40/E8DCDC/000000?text=TS" alt="User avatar" class="rounded-full mr-3">
                                    <div>
                                        <h4 class="font-medium">Taylor S.</h4>
                                        <p class="text-gray-500 text-sm">June 10, 2023</p>
                                    </div>
                                </div>
                                <h3 class="font-bold mb-2">Finding Community After Injustice</h3>
                                <p class="text-gray-600 text-sm mb-3">How sharing my story helped me heal and connect with others who understood...</p>
                                <div class="flex flex-wrap">
                                    <span class="text-xs bg-purple-100 text-purple-800 px-2 py-1 rounded-full mr-2 mb-2">Community</span>
                                    <span class="text-xs bg-pink-100 text-pink-800 px-2 py-1 rounded-full mr-2 mb-2">Healing</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <section class="py-12 bg-white">
                <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
                    <h2 class="text-2xl font-bold text-center text-gray-900 mb-2">Meet Our Mentors</h2>
                    <p class="text-gray-600 text-center max-w-2xl mx-auto mb-8">Experienced professionals ready to provide guidance and support</p>

                    <div class="grid md:grid-cols-3 gap-8">
                        <div class="bg-white border border-gray-200 rounded-lg p-6 mentor-card">
                            <div class="flex items-center mb-4">
                                <img src="https://placehold.co/80x80/9FD4DC/000000?text=SJ" alt="Portrait of Sarah Johnson, Civil Rights Attorney" class="rounded-full w-16 h-16 mr-4">
                                <div>
                                    <h3 class="font-bold text-lg">Dr. Sarah Johnson</h3>
                                    <p class="text-indigo-600">Civil Rights Law</p>
                                </div>
                            </div>
                            <p class="text-gray-600 text-sm mb-4">Specialized in employment discrimination cases with 15+ years experience helping clients navigate complex legal systems.</p>
                            <div class="flex items-center justify-between">
                                <div class="flex" role="img" aria-label="5 out of 5 stars">
                                    <i class="fas fa-star text-yellow-400"></i>
                                    <i class="fas fa-star text-yellow-400"></i>
                                    <i class="fas fa-star text-yellow-400"></i>
                                    <i class="fas fa-star text-yellow-400"></i>
                                    <i class="fas fa-star text-yellow-400"></i>
                                </div>
                                <span class="text-gray-500 text-sm">4.9 (32 reviews)</span>
                            </div>
                            <button class="w-full mt-4 bg-indigo-600 hover:bg-indigo-700 text-white py-2 rounded-md">Connect</button>
                        </div>

                        <div class="bg-white border border-gray-200 rounded-lg p-6 mentor-card">
                            <div class="flex items-center mb-4">
                                <img src="https://placehold.co/80x80/CCD9F4/000000?text=MC" alt="Portrait of Michael Chen, Immigration Lawyer" class="rounded-full w-16 h-16 mr-4">
                                <div>
                                    <h3 class="font-bold text-lg">Michael Chen</h3>
                                    <p class="text-indigo-600">Immigration Law</p>
                                </div>
                            </div>
                            <p class="text-gray-600 text-sm mb-4">Helping families navigate complex immigration processes for a decade with compassion and expertise.</p>
                            <div class="flex items-center justify-between">
                                <div class="flex" role="img" aria-label="4.5 out of 5 stars">
                                    <i class="fas fa-star text-yellow-400"></i>
                                    <i class="fas fa-star text-yellow-400"></i>
                                    <i class="fas fa-star text-yellow-400"></i>
                                    <i class="fas fa-star text-yellow-400"></i>
                                    <i class="fas fa-star-half-alt text-yellow-400"></i>
                                </div>
                                <span class="text-gray-500 text-sm">4.7 (28 reviews)</span>
                            </div>
                            <button class="w-full mt-4 bg-indigo-600 hover:bg-indigo-700 text-white py-2 rounded-md">Connect</button>
                        </div>

                        <div class="bg-white border border-gray-200 rounded-lg p-6 mentor-card">
                            <div class="flex items-center mb-4">
                                <img src="https://placehold.co/80x80/DCCDC4/000000?text=DL" alt="Portrait of David Lee, Family Law Attorney" class="rounded-full w-16 h-16 mr-4">
                                <div>
                                    <h3 class="font-bold text-lg">David Lee</h3>
                                    <p class="text-indigo-600">Family Law</p>
                                </div>
                            </div>
                            <p class="text-gray-600 text-sm mb-4">Provides empathetic legal counsel for family disputes, child custody, and domestic issues.</p>
                            <div class="flex items-center justify-between">
                                <div class="flex" role="img" aria-label="5 out of 5 stars">
                                    <i class="fas fa-star text-yellow-400"></i>
                                    <i class="fas fa-star text-yellow-400"></i>
                                    <i class="fas fa-star text-yellow-400"></i>
                                    <i class="fas fa-star text-yellow-400"></i>
                                    <i class="fas fa-star text-yellow-400"></i>
                                </div>
                                <span class="text-gray-500 text-sm">5.0 (19 reviews)</span>
                            </div>
                            <button class="w-full mt-4 bg-indigo-600 hover:bg-indigo-700 text-white py-2 rounded-md">Connect</button>
                        </div>
                    </div>
                    <div class="text-center mt-12">
                        <button class="bg-indigo-600 hover:bg-indigo-700 text-white px-8 py-3 rounded-md text-lg font-semibold" data-tab="mentors">See All Mentors</button>
                    </div>
                </div>
            </section>

            <section class="bg-indigo-700 text-white py-16">
                <div class="max-w-4xl mx-auto text-center px-4 sm:px-6 lg:px-8">
                    <h2 class="text-3xl font-bold mb-4">Ready to Share Your Story or Find Support?</h2>
                    <p class="text-lg mb-8">Join EqualVoices today and become part of a community dedicated to empowering individuals through shared experiences and legal guidance.</p>
                    <div class="flex flex-col sm:flex-row justify-center gap-4">
                        <button id="cta-share-story-btn" class="bg-white text-indigo-700 hover:bg-gray-100 px-6 py-3 rounded-md text-lg font-semibold">Share Your Story</button>
                        <button id="cta-learn-more-btn" class="bg-transparent border-2 border-white hover:bg-white hover:text-indigo-700 px-6 py-3 rounded-md text-lg font-semibold">Learn More</button>
                    </div>
                </div>
            </section>
        </div>

        <div class="tab-content" id="stories-tab" role="tabpanel" aria-labelledby="stories-tab-link">
            <section class="py-12 px-4 sm:px-6 lg:px-8 max-w-7xl mx-auto">
                <h2 class="text-3xl font-bold text-gray-900 mb-8 text-center">Community Stories</h2>
                <p class="text-gray-600 text-center mb-8">Read inspiring stories from individuals who have found their voice and navigated legal challenges with the support of EqualVoices.</p>
                <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-6">
                    <div class="bg-white rounded-lg shadow-sm overflow-hidden story-card p-5">
                        <h3 class="font-bold text-xl mb-2">My Journey to Justice</h3>
                        <p class="text-gray-600 text-sm mb-3">After years of silence, I found the courage to speak up about a housing dispute. The resources here were invaluable.</p>
                        <div class="flex items-center text-gray-500 text-sm">
                            <img src="https://placehold.co/30x30/F4E0C4/000000?text=JD" alt="User avatar" class="rounded-full mr-2"> Jane D. | Housing, Advocacy
                        </div>
                    </div>
                     <div class="bg-white rounded-lg shadow-sm overflow-hidden story-card p-5">
                        <h3 class="font-bold text-xl mb-2">Empowered Through Mentorship</h3>
                        <p class="text-gray-600 text-sm mb-3">My mentor helped me understand my rights during a difficult family situation. I'm so grateful for the guidance.</p>
                        <div class="flex items-center text-gray-500 text-sm">
                            <img src="https://placehold.co/30x30/C4F4D3/000000?text=KM" alt="User avatar" class="rounded-full mr-2"> Kyle M. | Family, Mentorship
                        </div>
                    </div>
                    </div>
                </div>
            </section>
        </div>

        <div class="tab-content" id="mentors-tab" role="tabpanel" aria-labelledby="mentors-tab-link">
            <section class="py-12 px-4 sm:px-6 lg:px-8 max-w-7xl mx-auto">
                <h2 class="text-3xl font-bold text-gray-900 mb-8 text-center">Our Network of Legal Mentors</h2>
                <p class="text-gray-600 text-center mb-8">Browse our expert mentors, filter by specialty, and connect with someone who can guide you.</p>
                <div class="grid md:grid-cols-2 lg:grid-cols-3 gap-8">
                     <div class="bg-white border border-gray-200 rounded-lg p-6 mentor-card">
                            <div class="flex items-center mb-4">
                                <img src="https://placehold.co/80x80/9FD4DC/000000?text=LM" alt="Portrait of Leisha Mphela" class="rounded-full w-16 h-16 mr-4">
                                <div>
                                    <h3 class="font-bold text-lg">Leisha Mphela</h3>
                                    <p class="text-indigo-600">Civil Rights Law</p>
                                </div>
                            </div>
                            <p class="text-gray-600 text-sm mb-4">Specialized in employment discrimination cases with 2 years experience helping clients navigate complex legal systems.</p>
                            <div class="flex items-center justify-between">
                                <div class="flex" role="img" aria-label="No reviews">
                                    </div>
                                <span class="text-gray-500 text-sm">No reviews yet</span>
                            </div>
                            <button class="w-full mt-4 bg-indigo-600 hover:bg-indigo-700 text-white py-2 rounded-md">Connect</button>
                        </div>

                        <div class="bg-white border border-gray-200 rounded-lg p-6 mentor-card">
                            <div class="flex items-center mb-4">
                                <img src="https://placehold.co/80x80/CCD9F4/000000?text=MM" alt="Portrait of Mologadi Mphela" class="rounded-full w-16 h-16 mr-4">
                                <div>
                                    <h3 class="font-bold text-lg">Mologadi Mphela</h3>
                                    <p class="text-indigo-600">Family Law</p>
                                </div>
                            </div>
                            <p class="text-gray-600 text-sm mb-4">Helping families navigate complex divorce or seperation processes with 2 years experience and compassion.</p>
                            <div class="flex items-center justify-between">
                                <div class="flex" role="img" aria-label="No reviews">
                                    </div>
                                <span class="text-gray-500 text-sm">No reviews yet</span>
                            </div>
                            <button class="w-full mt-4 bg-indigo-600 hover:bg-indigo-700 text-white py-2 rounded-md">Connect</button>
                        </div>
                </div>
            </section>
        </div>

        <div class="tab-content" id="resources-tab" role="tabpanel" aria-labelledby="resources-tab-link">
            <section class="py-12 px-4 sm:px-6 lg:px-8 max-w-7xl mx-auto">
                <h2 class="text-3xl font-bold text-gray-900 mb-8 text-center">Legal Resources & Guides</h2>
                <p class="text-gray-600 text-center mb-8">Access a comprehensive library of legal information, FAQs, and self-help guides.</p>
                <div class="grid md:grid-cols-2 gap-8">
                    <div class="bg-white rounded-lg shadow-sm p-6">
                        <h3 class="font-bold text-xl mb-3 resource-category pl-3">Employment Law</h3>
                        <ul class="list-disc list-inside text-gray-700 space-y-2">
                            <li><a href="#" class="text-indigo-600 hover:underline">Understanding Workplace Rights</a></li>
                            <li><a href="#" class="text-indigo-600 hover:underline">Dealing with Discrimination</a></li>
                            <li><a href="#" class="text-indigo-600 hover:underline">Filing a Complaint</a></li>
                        </ul>
                    </div>
                    <div class="bg-white rounded-lg shadow-sm p-6">
                        <h3 class="font-bold text-xl mb-3 resource-category pl-3">Family Law Basics</h3>
                        <ul class="list-disc list-inside text-gray-700 space-y-2">
                            <li><a href="#" class="text-indigo-600 hover:underline">Divorce and Separation</a></li>
                            <li><a href="#" class="text-indigo-600 hover:underline">Child Custody and Support</a></li>
                            <li><a href="#" class="text-indigo-600 hover:underline">Domestic Violence Resources</a></li>
                        </ul>
                    </div>
                </div>
            </section>
        </div>
    </main>

    <footer class="bg-gray-800 text-white py-8">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 text-center text-sm">
            <p>&copy; 2025 EqualVoices. All rights reserved.</p>
            <div class="flex justify-center space-x-4 mt-4">
                <a href="#" class="hover:text-indigo-400">Contact Us</a>
            </div>
        </div>
    </footer>

    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const tabs = document.querySelectorAll('[data-tab]');
            const tabContents = document.querySelectorAll('.tab-content');
            const mobileMenuButton = document.getElementById('mobile-menu-button');
            const mobileMenu = document.getElementById('mobile-menu');
            const shareStoryBtns = document.querySelectorAll('#share-story-btn, #cta-share-story-btn');
            const highContrastToggle = document.getElementById('high-contrast-toggle');
            const body = document.body;

            // Tab switching logic
            function showTab(tabId) {
                tabContents.forEach(content => {
                    content.classList.remove('active');
                });
                tabs.forEach(tab => {
                    tab.classList.remove('border-indigo-500', 'text-gray-900', 'bg-indigo-50', 'text-indigo-700');
                    tab.classList.add('border-transparent', 'text-gray-500', 'hover:border-gray-300', 'hover:text-gray-700');
                    tab.removeAttribute('aria-current');
                });

                document.getElementById(`${tabId}-tab`).classList.add('active');
                const activeTabLinkDesktop = document.querySelector(`.sm\\:flex [data-tab="${tabId}"]`);
                if (activeTabLinkDesktop) {
                    activeTabLinkDesktop.classList.remove('border-transparent', 'text-gray-500', 'hover:border-gray-300', 'hover:text-gray-700');
                    activeTabLinkDesktop.classList.add('border-indigo-500', 'text-gray-900');
                    activeTabLinkDesktop.setAttribute('aria-current', 'page');
                }
                const activeTabLinkMobile = document.querySelector(`#mobile-menu [data-tab="${tabId}"]`);
                if (activeTabLinkMobile) {
                    activeTabLinkMobile.classList.remove('border-transparent', 'text-gray-500', 'hover:bg-gray-50', 'hover:border-gray-300', 'hover:text-gray-700');
                    activeTabLinkMobile.classList.add('bg-indigo-50', 'border-indigo-500', 'text-indigo-700');
                    activeTabLinkMobile.setAttribute('aria-current', 'page');
                }
                // Scroll to top of the main content area for better UX on tab switch
                document.getElementById('main-content').scrollIntoView({ behavior: 'smooth' });
            }

            tabs.forEach(tab => {
                tab.addEventListener('click', (e) => {
                    e.preventDefault();
                    const tabId = e.target.dataset.tab;
                    showTab(tabId);
                    if (mobileMenu.classList.contains('block')) {
                        mobileMenu.classList.remove('block');
                        mobileMenu.classList.add('hidden');
                        mobileMenuButton.setAttribute('aria-expanded', 'false');
                    }
                });
            });

            // Mobile menu toggle
            mobileMenuButton.addEventListener('click', () => {
                const isExpanded = mobileMenuButton.getAttribute('aria-expanded') === 'true';
                mobileMenu.classList.toggle('hidden');
                mobileMenu.classList.toggle('block');
                mobileMenuButton.setAttribute('aria-expanded', !isExpanded);
            });

            // "Share Your Story" buttons
            shareStoryBtns.forEach(btn => {
                btn.addEventListener('click', (e) => {
                    e.preventDefault();
                    showTab('stories');
                });
            });

            // High Contrast Mode Toggle
            highContrastToggle.addEventListener('click', () => {
                body.classList.toggle('high-contrast');
                const isHighContrast = body.classList.contains('high-contrast');
                highContrastToggle.setAttribute('aria-pressed', isHighContrast);
                localStorage.setItem('high-contrast-mode', isHighContrast);
            });

            // Check for high contrast mode preference on load
            if (localStorage.getItem('high-contrast-mode') === 'true') {
                body.classList.add('high-contrast');
                highContrastToggle.setAttribute('aria-pressed', 'true');
            }
        });
    </script>
</body>
</html>
