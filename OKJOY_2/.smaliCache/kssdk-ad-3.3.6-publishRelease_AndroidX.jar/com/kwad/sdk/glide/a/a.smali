.class public Lcom/kwad/sdk/glide/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/kwad/sdk/glide/a/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/kwad/sdk/glide/a/a;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_4d

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/KsAdSDKImpl;->getIsExternal()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_4d

    :cond_13
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {}, Lcom/kwad/sdk/crash/utils/AbiUtil;->b()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {}, Lcom/kwad/sdk/core/config/c;->t()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_29

    const-string v0, "https://static.yximgs.com/udata/pkg/KS-Android-KSAdSDk/ks_so-webpArm64v8aRelease-3.3.9.apk"

    :cond_29
    const-string v1, "sowebp-v8a"

    goto :goto_3a

    :cond_2c
    invoke-static {}, Lcom/kwad/sdk/core/config/c;->s()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_38

    const-string v0, "https://static.yximgs.com/udata/pkg/KS-Android-KSAdSDk/ks_so-webpArmeabiv7aRelease-3.3.9.apk"

    :cond_38
    const-string v1, "sowebp-v7a"

    :goto_3a
    invoke-static {p0}, Lcom/kwai/sodler/a/b;->a(Landroid/content/Context;)V

    new-instance p0, Lcom/kwad/sdk/glide/a/a$1;

    invoke-direct {p0, v0, v1}, Lcom/kwad/sdk/glide/a/a$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/kwai/sodler/a/b;->a(Lcom/kwai/sodler/lib/a/b$a;)V

    new-instance p0, Lcom/kwad/sdk/glide/a/a$2;

    invoke-direct {p0}, Lcom/kwad/sdk/glide/a/a$2;-><init>()V

    invoke-static {v1, p0}, Lcom/kwai/sodler/a/b;->a(Ljava/lang/String;Lcom/kwai/sodler/lib/ext/b;)V

    :cond_4d
    :goto_4d
    return-void
.end method
