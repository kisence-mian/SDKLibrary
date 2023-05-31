.class Lcom/bytedance/applog/b/s;
.super Lcom/bytedance/applog/b/c;
.source "SourceFile"


# instance fields
.field private final e:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 23
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/applog/b/c;-><init>(ZZ)V

    .line 24
    iput-object p1, p0, Lcom/bytedance/applog/b/s;->e:Landroid/content/Context;

    .line 25
    return-void
.end method


# virtual methods
.method protected a(Lorg/json/JSONObject;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/bytedance/applog/b/s;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 33
    :try_start_7
    iget-object v2, p0, Lcom/bytedance/applog/b/s;->e:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_12} :catch_36

    move-result-object v0

    .line 37
    :goto_13
    if-eqz v0, :cond_3c

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_3c

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v2

    if-lez v2, :cond_3c

    .line 38
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 39
    if-eqz v0, :cond_3c

    .line 40
    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/bytedance/applog/util/b;->b([B)Ljava/lang/String;

    move-result-object v0

    .line 44
    :goto_2d
    if-eqz v0, :cond_34

    .line 45
    const-string v1, "sig_hash"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    :cond_34
    const/4 v0, 0x1

    return v0

    .line 34
    :catch_36
    move-exception v0

    .line 35
    invoke-static {v0}, Lcom/bytedance/applog/util/i;->a(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_13

    :cond_3c
    move-object v0, v1

    goto :goto_2d
.end method
