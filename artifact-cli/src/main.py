import argparse
from google.cloud import artifactregistry_v1
from google.cloud.artifactregistry_v1.types import ListDockerImagesRequest

def list_artifact_versions(repo_name, artifact_name):
    """
    List all versions of a Docker artifact and their last updated timestamps.
    """
    client = artifactregistry_v1.ArtifactRegistryClient()

    request = ListDockerImagesRequest(
        parent=f"projects/{repo_name}/locations/-/repositories/{artifact_name}"
    )

    try:
        response = client.list_docker_images(request)
        for image in response:
            print(f"Artifact: {image.name}, Updated: {image.update_time}")
    except Exception as e:
        print(f"Error fetching artifact versions: {e}")

def latest_artifact_version(repo_name, artifact_name):
    """
    List the latest version of a Docker artifact and its last updated timestamp.
    """
    client = artifactregistry_v1.ArtifactRegistryClient()

    request = ListDockerImagesRequest(
        parent=f"projects/{repo_name}/locations/-/repositories/{artifact_name}",
        page_size=1,  # Retrieve only the latest version
        order_by="update_time desc"
    )

    try:
        response = client.list_docker_images(request)
        latest_image = next(iter(response), None)
        if latest_image:
            print(f"Latest Artifact: {latest_image.name}, Updated: {latest_image.update_time}")
        else:
            print("No artifacts found.")
    except Exception as e:
        print(f"Error fetching the latest artifact version: {e}")

def main():
    parser = argparse.ArgumentParser(description="Artifact Registry CLI Tool")
    parser.add_argument("--repo", help="Project ID of the repository", required=True)
    parser.add_argument("--artifact", help="Artifact (repository) name", required=True)
    parser.add_argument("--latest", action="store_true", help="Fetch the latest version only")

    args = parser.parse_args()

    if args.latest:
        latest_artifact_version(args.repo, args.artifact)
    else:
        list_artifact_versions(args.repo, args.artifact)

if __name__ == "__main__":
    main()
