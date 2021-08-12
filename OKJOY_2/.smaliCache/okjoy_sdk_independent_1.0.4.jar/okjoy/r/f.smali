.class public Lokjoy/r/f;
.super Lokjoy/r/a;
.source ""


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lokjoy/r/a;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public a()[I
    .registers 10

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_b0

    .line 1
    iget-object v1, p0, Lokjoy/r/a;->a:Landroid/app/Activity;

    const-string v2, "ro.miui.notch"

    .line 2
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_d
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v6, "android.os.SystemProperties"

    invoke-virtual {v1, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v6, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v4

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    const-string v7, "getInt"

    invoke-virtual {v1, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v8, v7, v4

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v7, v5

    invoke-virtual {v6, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;
    :try_end_3d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_3d} :catch_ad
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3d} :catch_3e

    goto :goto_43

    :catch_3e
    move-exception v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3
    :goto_43
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_4b

    move v1, v5

    goto :goto_4c

    :cond_4b
    move v1, v4

    :goto_4c
    if-eqz v1, :cond_ac

    .line 4
    iget-object v1, p0, Lokjoy/r/a;->a:Landroid/app/Activity;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/16 v2, 0x59

    const-string v6, "none"

    const-string v7, "notch.config"

    if-eqz v1, :cond_94

    const-string v3, "landscape"

    if-eq v1, v5, :cond_83

    const/4 v2, 0x3

    if-eq v1, v2, :cond_70

    goto :goto_ac

    .line 5
    :cond_70
    iget-object v1, p0, Lokjoy/r/a;->a:Landroid/app/Activity;

    .line 6
    invoke-static {v1, v7, v6}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ac

    const/16 v1, -0x59

    .line 7
    aput v1, v0, v5

    goto :goto_ac

    .line 8
    :cond_83
    iget-object v1, p0, Lokjoy/r/a;->a:Landroid/app/Activity;

    .line 9
    invoke-static {v1, v7, v6}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 10
    aput v2, v0, v4

    goto :goto_ac

    .line 11
    :cond_94
    iget-object v1, p0, Lokjoy/r/a;->a:Landroid/app/Activity;

    .line 12
    invoke-static {v1, v7, v6}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "portrait"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 13
    invoke-virtual {p0}, Lokjoy/r/a;->c()Z

    move-result v1

    if-nez v1, :cond_ac

    aput v2, v0, v3

    :cond_ac
    :goto_ac
    return-object v0

    .line 14
    :catch_ad
    move-exception v0

    throw v0

    nop

    :array_b0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method
