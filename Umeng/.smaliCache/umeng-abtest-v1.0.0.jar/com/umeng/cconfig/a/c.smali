.class public final Lcom/umeng/cconfig/a/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    if-eqz p0, :cond_b

    :try_start_2
    const-string v0, "cconfig_sharedpreference"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_a

    return-object p0

    :catch_a
    move-exception p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method
