.class final Lcom/facebook/internal/FileLruCache$ModifiedFile;
.super Ljava/lang/Object;
.source "FileLruCache.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/FileLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ModifiedFile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/facebook/internal/FileLruCache$ModifiedFile;",
        ">;"
    }
.end annotation


# static fields
.field private static final HASH_MULTIPLIER:I = 0x25

.field private static final HASH_SEED:I = 0x1d


# instance fields
.field private final file:Ljava/io/File;

.field private final modified:J


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;

    .line 645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 646
    iput-object p1, p0, Lcom/facebook/internal/FileLruCache$ModifiedFile;->file:Ljava/io/File;

    .line 647
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/internal/FileLruCache$ModifiedFile;->modified:J

    .line 648
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/facebook/internal/FileLruCache$ModifiedFile;)I
    .registers 7
    .param p1, "another"    # Lcom/facebook/internal/FileLruCache$ModifiedFile;

    .line 660
    invoke-virtual {p0}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->getModified()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->getModified()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_e

    .line 661
    const/4 v0, -0x1

    return v0

    .line 662
    :cond_e
    invoke-virtual {p0}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->getModified()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->getModified()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_1c

    .line 663
    const/4 v0, 0x1

    return v0

    .line 665
    :cond_1c
    invoke-virtual {p0}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->getFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 638
    check-cast p1, Lcom/facebook/internal/FileLruCache$ModifiedFile;

    invoke-virtual {p0, p1}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->compareTo(Lcom/facebook/internal/FileLruCache$ModifiedFile;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "another"    # Ljava/lang/Object;

    .line 671
    instance-of v0, p1, Lcom/facebook/internal/FileLruCache$ModifiedFile;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Lcom/facebook/internal/FileLruCache$ModifiedFile;

    .line 673
    invoke-virtual {p0, v0}, Lcom/facebook/internal/FileLruCache$ModifiedFile;->compareTo(Lcom/facebook/internal/FileLruCache$ModifiedFile;)I

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 671
    :goto_10
    return v0
.end method

.method getFile()Ljava/io/File;
    .registers 2

    .line 651
    iget-object v0, p0, Lcom/facebook/internal/FileLruCache$ModifiedFile;->file:Ljava/io/File;

    return-object v0
.end method

.method getModified()J
    .registers 3

    .line 655
    iget-wide v0, p0, Lcom/facebook/internal/FileLruCache$ModifiedFile;->modified:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 7

    .line 678
    const/16 v0, 0x1d

    .line 680
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x25

    iget-object v2, p0, Lcom/facebook/internal/FileLruCache$ModifiedFile;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 681
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x25

    iget-wide v2, p0, Lcom/facebook/internal/FileLruCache$ModifiedFile;->modified:J

    const-wide/32 v4, 0x7fffffff

    rem-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    .line 683
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method
