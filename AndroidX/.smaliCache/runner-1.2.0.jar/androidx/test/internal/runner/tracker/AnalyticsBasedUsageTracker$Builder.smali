.class public Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;
.super Ljava/lang/Object;
.source "AnalyticsBasedUsageTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private analyticsURI:Ljava/net/URL;

.field private analyticsUri:Landroid/net/Uri;

.field private apiLevel:Ljava/lang/String;

.field private hashed:Z

.field private model:Ljava/lang/String;

.field private screenResolution:Ljava/lang/String;

.field private final targetContext:Landroid/content/Context;

.field private targetPackage:Ljava/lang/String;

.field private trackingId:Ljava/lang/String;

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "targetContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetContext"
        }
    .end annotation

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 81
    const-string v1, "https"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 82
    const-string v1, "www.google-analytics.com"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 83
    const-string v1, "collect"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->analyticsUri:Landroid/net/Uri;

    .line 85
    const-string v0, "UA-36650409-3"

    iput-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->trackingId:Ljava/lang/String;

    .line 86
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->apiLevel:Ljava/lang/String;

    .line 87
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->model:Ljava/lang/String;

    .line 95
    if-eqz p1, :cond_35

    .line 98
    iput-object p1, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->targetContext:Landroid/content/Context;

    .line 99
    return-void

    .line 96
    :cond_35
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Context null!?"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;

    .line 77
    iget-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->trackingId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;

    .line 77
    iget-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->targetPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;)Ljava/net/URL;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;

    .line 77
    iget-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->analyticsURI:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic access$300(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;

    .line 77
    iget-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->apiLevel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;

    .line 77
    iget-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->model:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;

    .line 77
    iget-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->screenResolution:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;

    .line 77
    iget-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->userId:Ljava/lang/String;

    return-object v0
.end method

.method private hasInternetPermission()Z
    .registers 3

    .line 208
    iget-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->targetContext:Landroid/content/Context;

    .line 209
    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 208
    :goto_d
    return v0
.end method


# virtual methods
.method public buildIfPossible()Landroidx/test/internal/runner/tracker/UsageTracker;
    .registers 8

    .line 139
    invoke-direct {p0}, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->hasInternetPermission()Z

    move-result v0

    const-string v1, "InfraTrack"

    const/4 v2, 0x0

    if-nez v0, :cond_f

    .line 140
    const-string v0, "Tracking disabled due to lack of internet permissions"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    return-object v2

    .line 144
    :cond_f
    iget-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->targetPackage:Ljava/lang/String;

    if-nez v0, :cond_1c

    .line 145
    iget-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->targetContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->withTargetPackage(Ljava/lang/String;)Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;

    .line 148
    :cond_1c
    iget-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->targetPackage:Ljava/lang/String;

    const-string v3, "com.google.analytics"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 149
    const-string v0, "Refusing to use analytics while testing analytics."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-object v2

    .line 154
    :cond_2c
    :try_start_2c
    iget-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->targetPackage:Ljava/lang/String;

    const-string v3, "com.google."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8e

    iget-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->targetPackage:Ljava/lang/String;

    const-string v3, "com.android."

    .line 155
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8e

    iget-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->targetPackage:Ljava/lang/String;

    const-string v3, "android.support."

    .line 156
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    goto :goto_8e

    .line 159
    :cond_4b
    iget-boolean v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->hashed:Z

    if-nez v0, :cond_8b

    .line 160
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 161
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 162
    iget-object v3, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->targetPackage:Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 163
    new-instance v3, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigInteger;-><init>([B)V

    .line 164
    .local v3, "hashedPackage":Ljava/math/BigInteger;
    const-string v4, "sha256-"

    const/16 v5, 0x10

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_83

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_89

    :cond_83
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_89
    iput-object v4, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->targetPackage:Ljava/lang/String;

    .line 166
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v3    # "hashedPackage":Ljava/math/BigInteger;
    :cond_8b
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->hashed:Z
    :try_end_8e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2c .. :try_end_8e} :catch_114
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2c .. :try_end_8e} :catch_10d

    .line 174
    :cond_8e
    :goto_8e
    nop

    .line 177
    :try_start_8f
    new-instance v0, Ljava/net/URL;

    iget-object v3, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->analyticsUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->analyticsURI:Ljava/net/URL;
    :try_end_9c
    .catch Ljava/net/MalformedURLException; {:try_start_8f .. :try_end_9c} :catch_eb

    .line 181
    nop

    .line 183
    iget-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->screenResolution:Ljava/lang/String;

    if-nez v0, :cond_d7

    .line 184
    iget-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->targetContext:Landroid/content/Context;

    .line 185
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 186
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 188
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_b6

    .line 189
    const-string v1, "0x0"

    iput-object v1, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->screenResolution:Ljava/lang/String;

    goto :goto_d7

    .line 191
    :cond_b6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 193
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 194
    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 195
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 196
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->screenResolution:Ljava/lang/String;

    .line 200
    .end local v0    # "display":Landroid/view/Display;
    :cond_d7
    :goto_d7
    iget-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->userId:Ljava/lang/String;

    if-nez v0, :cond_e5

    .line 201
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->userId:Ljava/lang/String;

    .line 204
    :cond_e5
    new-instance v0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;

    invoke-direct {v0, p0, v2}, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker;-><init>(Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$1;)V

    return-object v0

    .line 178
    :catch_eb
    move-exception v0

    .line 179
    .local v0, "mule":Ljava/net/MalformedURLException;
    const-string v3, "Tracking disabled bad url: "

    iget-object v4, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->analyticsUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_103

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_109

    :cond_103
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v3, v4

    :goto_109
    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 180
    return-object v2

    .line 171
    .end local v0    # "mule":Ljava/net/MalformedURLException;
    :catch_10d
    move-exception v0

    .line 172
    .local v0, "uee":Ljava/io/UnsupportedEncodingException;
    const-string v3, "Impossible - no utf-8 encoding?"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    return-object v2

    .line 168
    .end local v0    # "uee":Ljava/io/UnsupportedEncodingException;
    :catch_114
    move-exception v0

    .line 169
    .local v0, "nsae":Ljava/security/NoSuchAlgorithmException;
    const-string v3, "Cannot hash package name."

    invoke-static {v1, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    return-object v2
.end method

.method public withAnalyticsUri(Landroid/net/Uri;)Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;
    .registers 2
    .param p1, "analyticsUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "analyticsUri"
        }
    .end annotation

    .line 107
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iput-object p1, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->analyticsUri:Landroid/net/Uri;

    .line 109
    return-object p0
.end method

.method public withApiLevel(Ljava/lang/String;)Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;
    .registers 2
    .param p1, "apiLevel"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "apiLevel"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->apiLevel:Ljava/lang/String;

    .line 114
    return-object p0
.end method

.method public withModel(Ljava/lang/String;)Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;
    .registers 2
    .param p1, "model"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "model"
        }
    .end annotation

    .line 128
    iput-object p1, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->model:Ljava/lang/String;

    .line 129
    return-object p0
.end method

.method public withScreenResolution(Ljava/lang/String;)Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;
    .registers 2
    .param p1, "resolutionVal"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resolutionVal"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->screenResolution:Ljava/lang/String;

    .line 119
    return-object p0
.end method

.method public withTargetPackage(Ljava/lang/String;)Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;
    .registers 3
    .param p1, "targetPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetPackage"
        }
    .end annotation

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->hashed:Z

    .line 134
    iput-object p1, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->targetPackage:Ljava/lang/String;

    .line 135
    return-object p0
.end method

.method public withTrackingId(Ljava/lang/String;)Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;
    .registers 2
    .param p1, "trackingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trackingId"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->trackingId:Ljava/lang/String;

    .line 103
    return-object p0
.end method

.method public withUserId(Ljava/lang/String;)Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;
    .registers 2
    .param p1, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Landroidx/test/internal/runner/tracker/AnalyticsBasedUsageTracker$Builder;->userId:Ljava/lang/String;

    .line 124
    return-object p0
.end method
