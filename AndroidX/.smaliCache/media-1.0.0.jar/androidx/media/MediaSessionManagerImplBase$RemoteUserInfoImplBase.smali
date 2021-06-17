.class Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;
.super Ljava/lang/Object;
.source "MediaSessionManagerImplBase.java"

# interfaces
.implements Landroidx/media/MediaSessionManager$RemoteUserInfoImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media/MediaSessionManagerImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RemoteUserInfoImplBase"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mPid:I

.field private mUid:I


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPackageName:Ljava/lang/String;

    .line 127
    iput p2, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPid:I

    .line 128
    iput p3, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mUid:I

    .line 129
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 148
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 149
    return v0

    .line 151
    :cond_4
    instance-of v1, p1, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 152
    return v2

    .line 154
    :cond_a
    move-object v1, p1

    check-cast v1, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;

    .line 155
    .local v1, "otherUserInfo":Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;
    iget-object v3, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPackageName:Ljava/lang/String;

    iget-object v4, v1, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_24

    iget v3, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPid:I

    iget v4, v1, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPid:I

    if-ne v3, v4, :cond_24

    iget v3, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mUid:I

    iget v4, v1, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mUid:I

    if-ne v3, v4, :cond_24

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    :goto_25
    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 133
    iget-object v0, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .registers 2

    .line 138
    iget v0, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPid:I

    return v0
.end method

.method public getUid()I
    .registers 2

    .line 143
    iget v0, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mUid:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 162
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mPid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroidx/media/MediaSessionManagerImplBase$RemoteUserInfoImplBase;->mUid:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Landroidx/core/util/ObjectsCompat;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
