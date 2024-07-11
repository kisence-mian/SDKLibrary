.class public Lcom/kwad/sdk/utils/i;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ""

    sput-object v0, Lcom/kwad/sdk/utils/i;->a:Ljava/lang/String;

    sput-object v0, Lcom/kwad/sdk/utils/i;->b:Ljava/lang/String;

    sput-object v0, Lcom/kwad/sdk/utils/i;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .registers 10

    const-string v0, "ksad_common_encrypt_image.png"

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "EncryptUtils"

    const-string v3, ""

    if-nez v1, :cond_16

    const-string p0, "EncryptUtils getKey context is null"

    invoke-static {v2, p0}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_16
    packed-switch p0, :pswitch_data_90

    move-object v4, v3

    move-object v5, v4

    goto :goto_2a

    :pswitch_1c
    sget-object v4, Lcom/kwad/sdk/utils/i;->c:Ljava/lang/String;

    const-string v5, "rsa_private_key"

    goto :goto_2a

    :pswitch_21
    sget-object v4, Lcom/kwad/sdk/utils/i;->b:Ljava/lang/String;

    const-string v5, "rsa_public_key"

    goto :goto_2a

    :pswitch_26
    sget-object v4, Lcom/kwad/sdk/utils/i;->a:Ljava/lang/String;

    const-string v5, "aes_key"

    :goto_2a
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_31

    return-object v4

    :cond_31
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3c

    const-string v4, "EncryptUtils getKey get id is error "

    invoke-static {v2, v4}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    const/4 v4, 0x0

    :try_start_3d
    invoke-static {}, Lcom/kwad/sdk/api/loader/Loader;->get()Lcom/kwad/sdk/api/loader/Loader;

    move-result-object v6

    invoke-virtual {v6}, Lcom/kwad/sdk/api/loader/Loader;->getExternalResource()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4
    :try_end_4d
    .catchall {:try_start_3d .. :try_end_4d} :catchall_4e

    goto :goto_65

    :catchall_4e
    move-exception v6

    :try_start_4f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EncryptUtils getKey get InputStream from loader is null,  e: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_65
    if-nez v4, :cond_6f

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    :cond_6f
    invoke-static {v5, v4}, Lcom/kwad/sdk/utils/i;->a(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7e

    const-string v1, "EncryptUtils getKey get encryptedKey is invalid "

    invoke-static {v2, v1}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7e
    packed-switch p0, :pswitch_data_9a

    goto :goto_8a

    :pswitch_82
    sput-object v0, Lcom/kwad/sdk/utils/i;->c:Ljava/lang/String;

    goto :goto_8a

    :pswitch_85
    sput-object v0, Lcom/kwad/sdk/utils/i;->b:Ljava/lang/String;

    goto :goto_8a

    :pswitch_88
    sput-object v0, Lcom/kwad/sdk/utils/i;->a:Ljava/lang/String;
    :try_end_8a
    .catchall {:try_start_4f .. :try_end_8a} :catchall_8b

    :goto_8a
    return-object v0

    :catchall_8b
    move-exception p0

    invoke-static {p0}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    return-object v3

    :pswitch_data_90
    .packed-switch 0x0
        :pswitch_26
        :pswitch_21
        :pswitch_1c
    .end packed-switch

    :pswitch_data_9a
    .packed-switch 0x0
        :pswitch_88
        :pswitch_85
        :pswitch_82
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5

    const-class v0, Lcom/kwad/sdk/utils/i;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/kwad/sdk/pngencrypt/o;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/kwad/sdk/pngencrypt/o;-><init>(Ljava/io/InputStream;Z)V

    invoke-virtual {v1}, Lcom/kwad/sdk/pngencrypt/o;->c()V

    invoke-virtual {v1}, Lcom/kwad/sdk/pngencrypt/o;->b()Lcom/kwad/sdk/pngencrypt/chunk/ah;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/kwad/sdk/pngencrypt/chunk/ah;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lcom/kwad/sdk/pngencrypt/o;->d()V

    monitor-exit v0

    return-object p0

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw p0
.end method
