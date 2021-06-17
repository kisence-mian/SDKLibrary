.class public Lcom/facebook/internal/ImageRequest;
.super Ljava/lang/Object;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/ImageRequest$Builder;,
        Lcom/facebook/internal/ImageRequest$Callback;
    }
.end annotation


# static fields
.field private static final HEIGHT_PARAM:Ljava/lang/String; = "height"

.field private static final MIGRATION_PARAM:Ljava/lang/String; = "migration_overrides"

.field private static final MIGRATION_VALUE:Ljava/lang/String; = "{october_2012:true}"

.field private static final PATH:Ljava/lang/String; = "%s/%s/picture"

.field public static final UNSPECIFIED_DIMENSION:I = 0x0

.field private static final WIDTH_PARAM:Ljava/lang/String; = "width"


# instance fields
.field private allowCachedRedirects:Z

.field private callback:Lcom/facebook/internal/ImageRequest$Callback;

.field private callerTag:Ljava/lang/Object;

.field private context:Landroid/content/Context;

.field private imageUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Lcom/facebook/internal/ImageRequest$Builder;)V
    .registers 3
    .param p1, "builder"    # Lcom/facebook/internal/ImageRequest$Builder;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    # getter for: Lcom/facebook/internal/ImageRequest$Builder;->context:Landroid/content/Context;
    invoke-static {p1}, Lcom/facebook/internal/ImageRequest$Builder;->access$000(Lcom/facebook/internal/ImageRequest$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/ImageRequest;->context:Landroid/content/Context;

    .line 98
    # getter for: Lcom/facebook/internal/ImageRequest$Builder;->imageUrl:Landroid/net/Uri;
    invoke-static {p1}, Lcom/facebook/internal/ImageRequest$Builder;->access$100(Lcom/facebook/internal/ImageRequest$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/ImageRequest;->imageUri:Landroid/net/Uri;

    .line 99
    # getter for: Lcom/facebook/internal/ImageRequest$Builder;->callback:Lcom/facebook/internal/ImageRequest$Callback;
    invoke-static {p1}, Lcom/facebook/internal/ImageRequest$Builder;->access$200(Lcom/facebook/internal/ImageRequest$Builder;)Lcom/facebook/internal/ImageRequest$Callback;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/internal/ImageRequest;->callback:Lcom/facebook/internal/ImageRequest$Callback;

    .line 100
    # getter for: Lcom/facebook/internal/ImageRequest$Builder;->allowCachedRedirects:Z
    invoke-static {p1}, Lcom/facebook/internal/ImageRequest$Builder;->access$300(Lcom/facebook/internal/ImageRequest$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/internal/ImageRequest;->allowCachedRedirects:Z

    .line 101
    # getter for: Lcom/facebook/internal/ImageRequest$Builder;->callerTag:Ljava/lang/Object;
    invoke-static {p1}, Lcom/facebook/internal/ImageRequest$Builder;->access$400(Lcom/facebook/internal/ImageRequest$Builder;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_27

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto :goto_2b

    :cond_27
    # getter for: Lcom/facebook/internal/ImageRequest$Builder;->callerTag:Ljava/lang/Object;
    invoke-static {p1}, Lcom/facebook/internal/ImageRequest$Builder;->access$400(Lcom/facebook/internal/ImageRequest$Builder;)Ljava/lang/Object;

    move-result-object v0

    :goto_2b
    iput-object v0, p0, Lcom/facebook/internal/ImageRequest;->callerTag:Ljava/lang/Object;

    .line 102
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/internal/ImageRequest$Builder;Lcom/facebook/internal/ImageRequest$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/facebook/internal/ImageRequest$Builder;
    .param p2, "x1"    # Lcom/facebook/internal/ImageRequest$1;

    .line 36
    invoke-direct {p0, p1}, Lcom/facebook/internal/ImageRequest;-><init>(Lcom/facebook/internal/ImageRequest$Builder;)V

    return-void
.end method

.method public static getProfilePictureUri(Ljava/lang/String;II)Landroid/net/Uri;
    .registers 8
    .param p0, "userId"    # Ljava/lang/String;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 66
    const-string v0, "userId"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 69
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 71
    if-nez p1, :cond_1b

    if-eqz p2, :cond_13

    goto :goto_1b

    .line 72
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Either width or height must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1b
    :goto_1b
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getGraphUrlBase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 77
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 80
    invoke-static {}, Lcom/facebook/FacebookSdk;->getGraphApiVersion()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x1

    aput-object p0, v3, v0

    .line 78
    const-string v0, "%s/%s/picture"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 83
    .local v0, "builder":Landroid/net/Uri$Builder;
    if-eqz p2, :cond_4a

    .line 84
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 87
    :cond_4a
    if-eqz p1, :cond_55

    .line 88
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 91
    :cond_55
    const-string v1, "migration_overrides"

    const-string v2, "{october_2012:true}"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 93
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getCallback()Lcom/facebook/internal/ImageRequest$Callback;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/facebook/internal/ImageRequest;->callback:Lcom/facebook/internal/ImageRequest$Callback;

    return-object v0
.end method

.method public getCallerTag()Ljava/lang/Object;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/facebook/internal/ImageRequest;->callerTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/facebook/internal/ImageRequest;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getImageUri()Landroid/net/Uri;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/facebook/internal/ImageRequest;->imageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public isCachedRedirectAllowed()Z
    .registers 2

    .line 117
    iget-boolean v0, p0, Lcom/facebook/internal/ImageRequest;->allowCachedRedirects:Z

    return v0
.end method
