.class public Lcom/kwai/sodler/lib/c/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "plugin.signature"

    sput-object v0, Lcom/kwai/sodler/lib/c/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)[Landroid/content/pm/Signature;
    .registers 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x40

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_34

    :catch_11
    move-exception p0

    sget-object v0, Lcom/kwai/sodler/lib/c/b;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not get signature, error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwai/sodler/lib/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/kwai/sodler/lib/c/b;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/kwai/sodler/lib/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    :goto_34
    return-object p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    :try_start_2
    invoke-static {p0}, Lcom/kwai/sodler/lib/c/b;->a(Landroid/content/Context;)[Landroid/content/pm/Signature;

    move-result-object p0

    if-eqz p0, :cond_19

    array-length v1, p0

    const/4 v2, 0x1

    if-ge v1, v2, :cond_d

    goto :goto_19

    :cond_d
    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/kwad/sdk/utils/p;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_18} :catch_1a

    return-object p0

    :cond_19
    :goto_19
    return-object v0

    :catch_1a
    move-exception p0

    sget-object v1, Lcom/kwai/sodler/lib/c/b;->a:Ljava/lang/String;

    invoke-static {v1, p0}, Lcom/kwai/sodler/lib/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
