.class public abstract Landroid/content/ContentResolverWrapper;
.super Landroid/content/ContentResolver;
.source "ContentResolverWrapper.java"


# instance fields
.field mBase:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/content/ContentResolver;-><init>(Landroid/content/Context;)V

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentResolverWrapper;->mBase:Landroid/content/ContentResolver;

    .line 17
    return-void
.end method


# virtual methods
.method protected acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;

    .prologue
    .line 26
    iget-object v0, p0, Landroid/content/ContentResolverWrapper;->mBase:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->acquireExistingProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method protected acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;

    .prologue
    .line 21
    iget-object v0, p0, Landroid/content/ContentResolverWrapper;->mBase:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->acquireProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method protected acquireUnstableProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "auth"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Landroid/content/ContentResolverWrapper;->mBase:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/content/Context;Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public appNotRespondingViaProvider(Landroid/content/IContentProvider;)V
    .registers 2
    .param p1, "icp"    # Landroid/content/IContentProvider;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .prologue
    .line 57
    return-void
.end method

.method public releaseProvider(Landroid/content/IContentProvider;)Z
    .registers 3
    .param p1, "icp"    # Landroid/content/IContentProvider;

    .prologue
    .line 37
    iget-object v0, p0, Landroid/content/ContentResolverWrapper;->mBase:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->releaseProvider(Landroid/content/IContentProvider;)Z

    move-result v0

    return v0
.end method

.method public releaseUnstableProvider(Landroid/content/IContentProvider;)Z
    .registers 3
    .param p1, "icp"    # Landroid/content/IContentProvider;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Landroid/content/ContentResolverWrapper;->mBase:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->releaseUnstableProvider(Landroid/content/IContentProvider;)Z

    move-result v0

    return v0
.end method

.method public unstableProviderDied(Landroid/content/IContentProvider;)V
    .registers 3
    .param p1, "icp"    # Landroid/content/IContentProvider;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Landroid/content/ContentResolverWrapper;->mBase:Landroid/content/ContentResolver;

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->unstableProviderDied(Landroid/content/IContentProvider;)V

    .line 50
    return-void
.end method
