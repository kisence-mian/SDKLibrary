.class final Lcom/facebook/share/internal/VideoUploader$1;
.super Lcom/facebook/AccessTokenTracker;
.source "VideoUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/share/internal/VideoUploader;->registerAccessTokenTracker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 258
    invoke-direct {p0}, Lcom/facebook/AccessTokenTracker;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCurrentAccessTokenChanged(Lcom/facebook/AccessToken;Lcom/facebook/AccessToken;)V
    .registers 5
    .param p1, "oldAccessToken"    # Lcom/facebook/AccessToken;
    .param p2, "currentAccessToken"    # Lcom/facebook/AccessToken;

    .line 263
    if-nez p1, :cond_3

    .line 265
    return-void

    .line 268
    :cond_3
    if-eqz p2, :cond_13

    .line 270
    invoke-virtual {p2}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 271
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-static {v0, v1}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 273
    :cond_13
    # invokes: Lcom/facebook/share/internal/VideoUploader;->cancelAllRequests()V
    invoke-static {}, Lcom/facebook/share/internal/VideoUploader;->access$200()V

    .line 275
    :cond_16
    return-void
.end method
