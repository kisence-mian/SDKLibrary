.class final Lcom/tendcloud/tenddata/game/av;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 226
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/av;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 230
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/au;->a(Z)Z

    .line 231
    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    .line 232
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 233
    const-string v2, "getAdvertisingIdInfo"

    new-array v3, v0, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 234
    const/4 v2, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/tendcloud/tenddata/game/av;->val$context:Landroid/content/Context;

    aput-object v3, v0, v5

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 235
    const-string v1, "com.google.android.gms.ads.identifier.AdvertisingIdClient$Info"

    .line 236
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 237
    const-string v2, "getId"

    new-array v3, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 238
    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/au;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3c

    .line 243
    goto :goto_3d

    .line 239
    :catchall_3c
    move-exception v0

    .line 244
    :goto_3d
    return-void
.end method
