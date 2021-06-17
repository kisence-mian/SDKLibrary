.class Lcom/facebook/internal/FileLruCache$2;
.super Ljava/lang/Object;
.source "FileLruCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/internal/FileLruCache;->clearCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/internal/FileLruCache;

.field final synthetic val$filesToDelete:[Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/facebook/internal/FileLruCache;[Ljava/io/File;)V
    .registers 3
    .param p1, "this$0"    # Lcom/facebook/internal/FileLruCache;

    .line 251
    iput-object p1, p0, Lcom/facebook/internal/FileLruCache$2;->this$0:Lcom/facebook/internal/FileLruCache;

    iput-object p2, p0, Lcom/facebook/internal/FileLruCache$2;->val$filesToDelete:[Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 254
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$2;->val$filesToDelete:[Ljava/io/File;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_e

    aget-object v3, v0, v2

    .line 255
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 254
    .end local v3    # "file":Ljava/io/File;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 257
    :cond_e
    return-void
.end method
