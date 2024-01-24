import 'package:flutter/material.dart';

class Latihan2 extends StatelessWidget {
  const Latihan2({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 400,
              height: 200,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.blue.shade900, Colors.lightBlue])),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Image.network(
                              "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxAPEg8QDxAPDxAQEBAQDxcVDxANFRUSGBcXFhUSFhUYHSggGB0nGxcVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGi0lICUtLy0tLS0tLS0tLS0tLi8tLS0tLS8rLS0tLS8tLy0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAKYBLwMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAABgcBBAUIAwL/xABLEAABAwECBwcRBwMEAwEAAAABAAIDBAURBgcSEyExcTR0gZOhsrMXMjM1QVFSU1RhcnOCkbHR0hQiQ5LBwuEjlKIkQmJ1ZIOjFv/EABsBAQACAwEBAAAAAAAAAAAAAAAEBQIDBgcB/8QAQhEAAQMCAQYKCAQDCQAAAAAAAQACAwQREgUGITFRYRNBUnGBkaGxwdEUFSIyMzRy8FNi0uEWgvEjJCVCY5KissL/2gAMAwEAAhEDEQA/ALxRERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERFybetuGhY2WfKyHPDBktLzfcXah5mlcTqj2f4U3F/ytXG/uKLfLejlVNqBUVL434W2XV5HyHT1lNwshde5GgjyKu/qj2f4U3F/yu7Ylsw1seehLizKczS0tN416OELzmrWxN1l8dVD4L45BwgsPMCU9U97w11lllfIMFJTGaIuuCNZGom2wbQrIKjds4ZUdJIYJzIJGhrjksywLxeNKkl6894ZVeerap+sZ17W+i37o5GhbqmYxNFtZVXkTJrK6ZzZCcIF9G24t4q1OqPZ/hTcX/K/UOMKge4Na6W9zg0f07tJNw7qo9blj9mh9bH8QoYrZCbaPvpXSSZr0bWkhz9A2j9K9JBcm37dgoWNfUFwa52Q3JaXm+4nUPMF1lV2Oap00kQOgCSRw9K5rTyOVhPIY2FwXI5MpG1dUyF2o3vbYASpD1R7P8Kbi/5Tqj2f4U3F/wAqkUVd6dLu++ldj/CtHyn9Y/SvR1i2tFWRCaEuMZLgL25JvabjoWzVztiY+R5uaxrnuNxN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RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERf/Z",
                              width: 100,
                              height: 100,
                            ),
                          ),
                          Text("marvel")
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Image.network(
                              "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxAPEg8QDxAPDxAQEBAQDxcVDxANFRUSGBcXFhUSFhUYHSggGB0nGxcVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGi0lICUtLy0tLS0tLS0tLS0tLi8tLS0tLS8rLS0tLS8tLy0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAKYBLwMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAABgcBBAUIAwL/xABLEAABAwECBwcRBwMEAwEAAAABAAIDBAURBgcSEyExcTR0gZOhsrMXMjM1QVFSU1RhcnOCkbHR0hQiQ5LBwuEjlKIkQmJ1ZIOjFv/EABsBAQACAwEBAAAAAAAAAAAAAAAEBQIDBgcB/8QAQhEAAQMCAQYKCAQDCQAAAAAAAQACAwQREgUGITFRYRNBUnGBkaGxwdEUFSIyMzRy8FNi0uEWgvEjJCVCY5KissL/2gAMAwEAAhEDEQA/ALxRERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERFybetuGhY2WfKyHPDBktLzfcXah5mlcTqj2f4U3F/ytXG/uKLfLejlVNqBUVL434W2XV5HyHT1lNwshde5GgjyKu/qj2f4U3F/yu7Ylsw1seehLizKczS0tN416OELzmrWxN1l8dVD4L45BwgsPMCU9U97w11lllfIMFJTGaIuuCNZGom2wbQrIKjds4ZUdJIYJzIJGhrjksywLxeNKkl6894ZVeerap+sZ17W+i37o5GhbqmYxNFtZVXkTJrK6ZzZCcIF9G24t4q1OqPZ/hTcX/K/UOMKge4Na6W9zg0f07tJNw7qo9blj9mh9bH8QoYrZCbaPvpXSSZr0bWkhz9A2j9K9JBcm37dgoWNfUFwa52Q3JaXm+4nUPMF1lV2Oap00kQOgCSRw9K5rTyOVhPIY2FwXI5MpG1dUyF2o3vbYASpD1R7P8Kbi/5Tqj2f4U3F/wAqkUVd6dLu++ldj/CtHyn9Y/SvR1i2tFWRCaEuMZLgL25JvabjoWzVztiY+R5uaxrnuNxN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RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERf/Z",
                              width: 100,
                              height: 100,
                            ),
                          ),
                          Text("marvel")
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Image.network(
                              "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxAPEg8QDxAPDxAQEBAQDxcVDxANFRUSGBcXFhUSFhUYHSggGB0nGxcVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OGhAQGi0lICUtLy0tLS0tLS0tLS0tLi8tLS0tLS8rLS0tLS8tLy0tLS0tLS0tLS0tLS0tLS0tLS0tLf/AABEIAKYBLwMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAABgcBBAUIAwL/xABLEAABAwECBwcRBwMEAwEAAAABAAIDBAURBgcSEyExcTR0gZOhsrMXMjM1QVFSU1RhcnOCkbHR0hQiQ5LBwuEjlKIkQmJ1ZIOjFv/EABsBAQACAwEBAAAAAAAAAAAAAAAEBQIDBgcB/8QAQhEAAQMCAQYKCAQDCQAAAAAAAQACAwQREgUGITFRYRNBUnGBkaGxwdEUFSIyMzRy8FNi0uEWgvEjJCVCY5KissL/2gAMAwEAAhEDEQA/ALxRERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERFybetuGhY2WfKyHPDBktLzfcXah5mlcTqj2f4U3F/ytXG/uKLfLejlVNqBUVL434W2XV5HyHT1lNwshde5GgjyKu/qj2f4U3F/yu7Ylsw1seehLizKczS0tN416OELzmrWxN1l8dVD4L45BwgsPMCU9U97w11lllfIMFJTGaIuuCNZGom2wbQrIKjds4ZUdJIYJzIJGhrjksywLxeNKkl6894ZVeerap+sZ17W+i37o5GhbqmYxNFtZVXkTJrK6ZzZCcIF9G24t4q1OqPZ/hTcX/K/UOMKge4Na6W9zg0f07tJNw7qo9blj9mh9bH8QoYrZCbaPvpXSSZr0bWkhz9A2j9K9JBcm37dgoWNfUFwa52Q3JaXm+4nUPMF1lV2Oap00kQOgCSRw9K5rTyOVhPIY2FwXI5MpG1dUyF2o3vbYASpD1R7P8Kbi/5Tqj2f4U3F/wAqkUVd6dLu++ldj/CtHyn9Y/SvR1i2tFWRCaEuMZLgL25JvabjoWzVztiY+R5uaxrnuNxN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RERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERERf/Z",
                              width: 100,
                              height: 100,
                            ),
                          ),
                          Text("marvel")
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}