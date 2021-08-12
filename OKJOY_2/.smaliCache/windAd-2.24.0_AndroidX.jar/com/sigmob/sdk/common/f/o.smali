.class public final Lcom/sigmob/sdk/common/f/o;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    const-string v0, "com.Sigmob.Settings"

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .registers 3

    invoke-static {p0}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    invoke-static {p1}, Lcom/sigmob/sdk/common/f/m$a;->a(Ljava/lang/Object;)Z

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method
