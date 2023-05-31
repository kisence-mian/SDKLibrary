.class public interface abstract Lcom/bytedance/sdk/a/b/a/f/a;
.super Ljava/lang/Object;
.source "FileSystem.java"


# static fields
.field public static final a:Lcom/bytedance/sdk/a/b/a/f/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 46
    new-instance v0, Lcom/bytedance/sdk/a/b/a/f/a$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/a/b/a/f/a$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/a/b/a/f/a;->a:Lcom/bytedance/sdk/a/b/a/f/a;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract a(Ljava/io/File;Ljava/io/File;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b(Ljava/io/File;)Z
.end method

.method public abstract c(Ljava/io/File;)J
.end method
