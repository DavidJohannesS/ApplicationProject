Server Setup and Configuration Report 

Choosing CentOS Stream 9 for my server setup was a strategic decision, given its widespread adoption in the server domain and its roots in the robust Red Hat Enterprise Linux (RHEL) ecosystem. My fascination with system administration has led me to explore beyond CentOS, considering an automated migration to Debian using preseed files and deployment on Microsoft’s Hyper-V hypervisor. However, for the scope of this project, I’ve installed CentOS on bare metal to delve deeper into firewalld, a departure from my previous experience with UFW on Ubuntu Server. This endeavor is not just about learning a new firewall tool but also about gaining a comprehensive understanding of RHEL-based systems. 

Initial Setup 

Critical Preliminary Step: The journey began with flashing the BIOS on my Therramaster-manufactured machine. This pivotal step was necessary to unlock the bootloader, which, by default, is restricted to running Therramaster’s proprietary OS only. With the bootloader unlocked, I was able to proceed with the installation of my chosen operating system, CentOS Stream 9. 

Following this, I partitioned the storage, creating a separate /home partition for user data, distinct from the system files. Both the /home and root partitions were configured as Logical Volume Managers (LVMs), offering a scalable approach to storage management. 

Once CentOS was up and running, I set up SSH with multiplexing enabled for efficient remote access. This allowed me to comfortably continue the configuration from my main workstation, connecting to the server via SSH. 

RAID Configuration 

To safeguard my data against potential drive failures, I implemented a RAID 1 setup with the two available HDD bays in my NAS. This mirroring strategy ensures that each piece of data is written identically to both drives, providing a robust fail-safe. 

In addition to the RAID, I integrated the mirrored drives into a Logical Volume Manager (LVM). This layer of abstraction not only enhances the system’s resilience but also offers the flexibility to manage storage volumes efficiently. 

 

Network Security and Access 

Docker Integration: Before diving into the specifics of individual services, it’s important to note that Docker plays a central role in my server’s architecture. It provides a streamlined platform for running applications in isolated containers, including the VPN service, Wireguard. 

Wireguard Setup: Utilizing Wireguard within a Docker container, I’ve established a secure method to remotely access my network. This setup negates the need for traditional port forwarding, offering a more secure and simplified connection to my devices and services. 

Comprehensive Security Measures: In conjunction with Wireguard, I employ firewalld (a shift from my previous use of UFW) to manage network traffic rules. Additionally, Fail2Ban is in place to protect against brute-force attacks, and SELinux is configured for enforcing strict security policies and access controls.  

Samba: The Core of My File Management 

At the heart of my network’s file-sharing capabilities lies Samba, configured within an Arch Linux container. This choice reflects my preference for Arch’s simplicity and familiarity, which has been instrumental in my file server’s reliability and ease of use. 

Versatility in OS Experimentation: Samba’s integration into my NAS setup has been pivotal. It has granted me the freedom to experiment with various operating systems on my devices without the risk of data loss. Throughout my first semester at university, I was able to seamlessly switch between daily driving Arch Linux and exploring other distributions like Mint and Debian1. This flexibility has not only supported my academic pursuits but also fueled my passion for open-source technologies. 

 

Nginx: A Step Towards Professional Web Serving 

Transitioning from the simplicity of XAMPP to the efficiency of Nginx marked a significant upgrade in my server capabilities. For this project, I utilized the official Nginx Docker image, which streamlined the deployment process and ensured a stable, production-ready environment. 

Why Nginx? The choice was driven by the need for a server that could withstand the rigors of actual use. My previous experience with XAMPP, while educational, exposed me to the vulnerabilities of a server not designed for exposure to the internet. The constant barrage of autoscript attacks in the logs was a clear indicator that a more secure and capable web server was necessary. 

With Nginx, I’ve not only fortified my server against such threats but also embraced a platform renowned for its performance and scalability. This experience catalyzed my exploration into security measures, leading me to learn about UFW, Fail2Ban, and SELinux, as well as the implementation of Wireguard for secure remote access. 

 

Jellyfin: A Media Server for Educational Exploration 

Streaming Performance Insights: My Jellyfin media server, while modestly populated with a handful of songs, serves as a testbed for understanding media streaming over VPNs. It’s fascinating to note that streaming test files, such as movies, often performs more reliably than streaming MP3 files. This counterintuitive discovery underscores the complexities of data transfer and the factors that influence streaming quality. 

VPN Comparisons: The transition from OpenVPN to Wireguard was particularly enlightening. OpenVPN’s heavy encryption and certificate exchange introduced notable inconsistencies. In contrast, Wireguard’s lightweight protocol has provided a more consistent and efficient experience, reinforcing its suitability for remote access. 

 

Conclusion 

This project has been a profound affirmation of my commitment to continuous learning and improvement. Each challenge encountered and overcome has not only deepened my understanding of current technologies but also fueled my enthusiasm for mastering new ones. As I stand at the threshold of my professional career, I am equipped with a versatile skill set and an unwavering dedication to evolve alongside the ever-changing technological landscape. 

I am eager to apply this knowledge and adaptability to a variety of roles within the tech industry, confident that my foundation is strong and my capacity for growth is limitless. 

 

 

Note: Screenshots of the setup process are available for reference on my GitHub repository. All sensitive information has been carefully obscured to demonstrate my understanding of the need for privacy and security. 
