.class public final Lcom/umeng/umlink/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    if-eqz p0, :cond_a

    const/4 v0, 0x0

    const-string v1, "umeng_general_config"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0

    :cond_a
    const/4 p0, 0x0

    return-object p0
.end method
