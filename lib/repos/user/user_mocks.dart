// ignore_for_file: unused_element
part of 'user_repo.dart';

class _UserMocks {
  static final List<Map<String, dynamic>> _users = [
    {
      'id': 1,
      'uid': 'user-uuid-001',
      'full_name': 'John Doe',
      'email': 'john.doe@example.com',
      'designation': 'Senior Flutter Developer',
      'city_state': 'San Francisco, CA',
      'profile_picture': 'https://picsum.photos/400',
      'resume_url': null,
      'about':
          'Passionate Flutter developer with 5+ years of experience building scalable mobile applications. Love creating beautiful UIs and solving complex problems.',
      'website': 'https://johndoe.dev',
      'contact_details': {
        'phoneNumber': '+1 (555) 123-4567',
        'address': '123 Main St, San Francisco, CA 94105',
      },
      'skills': [
        'Flutter',
        'Dart',
        'Firebase',
        'REST APIs',
        'State Management',
        'CI/CD',
        'Git',
      ],
      'tech_stack': [
        {
          'category': 'frontend',
          'technologies': ['Flutter', 'React', 'HTML/CSS', 'JavaScript'],
        },
        {
          'category': 'backend',
          'technologies': ['Node.js', 'Express', 'Firebase Functions'],
        },
        {
          'category': 'database',
          'technologies': ['Firestore', 'PostgreSQL', 'MongoDB'],
        },
        {
          'category': 'devops',
          'technologies': ['Docker', 'GitHub Actions', 'Firebase Hosting'],
        },
      ],
      'preferred_roles': [
        'Mobile Developer',
        'Flutter Developer',
        'Full Stack Developer',
      ],
      'created_at': '2023-01-15T10:30:00.000Z',
    },
    {
      'id': 2,
      'uid': 'user-uuid-002',
      'full_name': 'Hassam Talha',
      'email': 'hassamtalha@gmail.com',
      'designation': 'Full Stack Developer',
      'city_state': 'Karachi, Pakistan',
      'profile_picture': 'https://picsum.photos/401',
      'resume_url': null,
      'about':
          'Experienced full stack developer specializing in React and Node.js. Passionate about building performant web applications and mentoring junior developers.',
      'website': 'https://hassamtalha.dev',
      'contact_details': {
        'phoneNumber': '+92 (300) 123-4567',
        'address': 'DHA Phase 5, Karachi, Pakistan',
      },
      'skills': [
        'React',
        'Node.js',
        'TypeScript',
        'MongoDB',
        'AWS',
        'Docker',
        'GraphQL',
      ],
      'tech_stack': [
        {
          'category': 'frontend',
          'technologies': ['React', 'Next.js', 'TypeScript', 'Tailwind CSS'],
        },
        {
          'category': 'backend',
          'technologies': ['Node.js', 'Express', 'NestJS', 'GraphQL'],
        },
        {
          'category': 'database',
          'technologies': ['MongoDB', 'Redis', 'PostgreSQL'],
        },
        {
          'category': 'devops',
          'technologies': ['AWS', 'Docker', 'Kubernetes', 'Jenkins'],
        },
      ],
      'preferred_roles': [
        'Full Stack Developer',
        'Backend Developer',
        'Team Lead',
      ],
      'created_at': '2023-03-20T08:15:00.000Z',
    },
    {
      'id': 3,
      'uid': 'user-uuid-003',
      'full_name': 'Tayyba Adien',
      'email': 'tayybaadien@gmail.com',
      'designation': 'UI/UX Designer & Frontend Developer',
      'city_state': 'Lahore, Pakistan',
      'profile_picture': 'https://picsum.photos/402',
      'resume_url': null,
      'about':
          'Creative designer turned developer with a keen eye for aesthetics. I bridge the gap between design and code to create delightful user experiences.',
      'website': 'https://tayybaadien.com',
      'contact_details': {
        'phoneNumber': '+92 (321) 987-6543',
        'address': 'Gulberg III, Lahore, Pakistan',
      },
      'skills': [
        'Figma',
        'Adobe XD',
        'Flutter',
        'React',
        'CSS/SCSS',
        'Animation',
        'Prototyping',
      ],
      'tech_stack': [
        {
          'category': 'frontend',
          'technologies': ['Flutter', 'React', 'Vue.js', 'Svelte'],
        },
        {
          'category': 'design',
          'technologies': ['Figma', 'Adobe XD', 'Sketch', 'Illustrator'],
        },
        {
          'category': 'other',
          'technologies': ['Framer Motion', 'GSAP', 'Lottie'],
        },
      ],
      'preferred_roles': [
        'UI/UX Designer',
        'Frontend Developer',
        'Product Designer',
      ],
      'created_at': '2023-05-10T14:30:00.000Z',
    },
    {
      'id': 4,
      'uid': 'user-uuid-004',
      'full_name': 'Sana Ullah',
      'email': 'sanaullah@gmail.com',
      'designation': 'DevOps Engineer',
      'city_state': 'Islamabad, Pakistan',
      'profile_picture': 'https://picsum.photos/403',
      'resume_url': null,
      'about':
          'DevOps specialist focused on automating infrastructure and improving deployment pipelines. Strong advocate for infrastructure as code and continuous delivery.',
      'website': 'https://sanaullah.tech',
      'contact_details': {
        'phoneNumber': '+92 (333) 456-7890',
        'address': 'F-7 Sector, Islamabad, Pakistan',
      },
      'skills': [
        'Kubernetes',
        'Docker',
        'Terraform',
        'AWS',
        'Jenkins',
        'Linux',
        'Python',
      ],
      'tech_stack': [
        {
          'category': 'devops',
          'technologies': ['Kubernetes', 'Docker', 'Terraform', 'Ansible'],
        },
        {
          'category': 'backend',
          'technologies': ['Python', 'Go', 'Shell Scripting'],
        },
        {
          'category': 'database',
          'technologies': ['PostgreSQL', 'MySQL', 'Redis', 'Elasticsearch'],
        },
        {
          'category': 'other',
          'technologies': ['AWS', 'GCP', 'Azure', 'Jenkins', 'GitLab CI'],
        },
      ],
      'preferred_roles': [
        'DevOps Engineer',
        'Cloud Architect',
        'Site Reliability Engineer',
      ],
      'created_at': '2023-02-28T11:00:00.000Z',
    },
    {
      'id': 5,
      'uid': 'user-uuid-005',
      'full_name': 'Arsalan Noor',
      'email': 'arsalannoor@gmail.com',
      'designation': 'Mobile App Developer',
      'city_state': 'Dubai, UAE',
      'profile_picture': 'https://picsum.photos/404',
      'resume_url': null,
      'about':
          'Mobile app developer with expertise in both Flutter and React Native. Love building cross-platform apps that feel native on every platform.',
      'website': 'https://arsalannoor.io',
      'contact_details': {
        'phoneNumber': '+971 (50) 234-5678',
        'address': 'Dubai Marina, Dubai, UAE',
      },
      'skills': [
        'Flutter',
        'React Native',
        'Swift',
        'Kotlin',
        'Firebase',
        'SQLite',
        'App Store Optimization',
      ],
      'tech_stack': [
        {
          'category': 'frontend',
          'technologies': [
            'Flutter',
            'React Native',
            'Swift UI',
            'Jetpack Compose',
          ],
        },
        {
          'category': 'backend',
          'technologies': ['Firebase', 'Node.js', 'REST APIs'],
        },
        {
          'category': 'database',
          'technologies': ['Firestore', 'SQLite', 'Realm', 'Hive'],
        },
        {
          'category': 'other',
          'technologies': [
            'App Store Connect',
            'Google Play Console',
            'TestFlight',
          ],
        },
      ],
      'preferred_roles': [
        'Mobile Developer',
        'Flutter Developer',
        'React Native Developer',
      ],
      'created_at': '2023-04-18T09:45:00.000Z',
    },
    {
      'id': 6,
      'uid': 'user-uuid-006',
      'full_name': 'Sarah Waseem',
      'email': 'sarahwaseem21@gmail.com',
      'designation': 'Data Scientist & ML Engineer',
      'city_state': 'Rawalpindi, Pakistan',
      'profile_picture': 'https://picsum.photos/405',
      'resume_url': '',
      'about':
          'Data scientist passionate about machine learning and AI. Experienced in building predictive models and deploying ML solutions in production environments.',
      'website': 'https://sarahwaseem.ai',
      'contact_details': {
        'phoneNumber': '+92 (345) 678-9012',
        'address': 'Bahria Town, Rawalpindi, Pakistan',
      },
      'skills': [
        'Python',
        'TensorFlow',
        'PyTorch',
        'Scikit-learn',
        'Pandas',
        'SQL',
        'Data Visualization',
      ],
      'tech_stack': [
        {
          'category': 'backend',
          'technologies': ['Python', 'FastAPI', 'Django', 'Flask'],
        },
        {
          'category': 'database',
          'technologies': ['PostgreSQL', 'MongoDB', 'BigQuery'],
        },
        {
          'category': 'other',
          'technologies': ['TensorFlow', 'PyTorch', 'Jupyter', 'MLflow'],
        },
        {
          'category': 'devops',
          'technologies': ['Docker', 'AWS SageMaker', 'Airflow'],
        },
      ],
      'preferred_roles': ['Data Scientist', 'ML Engineer', 'AI Researcher'],
      'created_at': '2023-06-05T16:20:00.000Z',
    },
  ];

  static Future<Map<String, dynamic>> login(String email) {
    final userData = _users.firstWhere(
      (user) => user['email'] == email,
      orElse: () => {},
    );

    if (userData.isEmpty) {
      return Future.value({
        'status': 404,
        'message': 'User not found with email: $email',
        'data': null,
      });
    }

    return Future.value({
      'status': 200,
      'message': 'User has been logged in!',
      'data': userData,
    });
  }

  static Future<Map<String, dynamic>> register() {
    return Future.value({'status': 200, 'message': 'mock', 'data': {}});
  }
}
