.class public Lokjoy/r/e;
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
    .registers 6

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_36

    invoke-virtual {p0}, Lokjoy/r/e;->d()Z

    move-result v1

    if-eqz v1, :cond_34

    iget-object v1, p0, Lokjoy/r/a;->a:Landroid/app/Activity;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iget-object v2, p0, Lokjoy/r/a;->a:Landroid/app/Activity;

    const/high16 v3, 0x41d80000    # 27.0f

    invoke-static {v2, v3}, Lokjoy/a/g;->a(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_31

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2d

    goto :goto_34

    :cond_2d
    neg-int v1, v2

    aput v1, v0, v3

    goto :goto_34

    :cond_31
    const/4 v1, 0x0

    aput v2, v0, v1

    :cond_34
    :goto_34
    return-object v0

    nop

    :array_36
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public c()Z
    .registers 3

    iget-object v0, p0, Lokjoy/r/a;->a:Landroid/app/Activity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    invoke-virtual {p0}, Lokjoy/r/e;->d()Z

    move-result v1

    if-eqz v1, :cond_1c

    if-nez v0, :cond_1c

    const/4 v0, 0x1

    return v0

    :cond_1c
    invoke-super {p0}, Lokjoy/r/a;->c()Z

    move-result v0

    return v0
.end method

.method public d()Z
    .registers 8

    const-string v0, "test"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lokjoy/r/a;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "com.util.FtFeature"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_f} :catch_41
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_f} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_33
    .catchall {:try_start_3 .. :try_end_f} :catchall_31

    const-string v3, "isFeatureSupport"

    const/4 v4, 0x1

    :try_start_12
    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v5, 0x20

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_30
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_30} :catch_41
    .catch Ljava/lang/NoSuchMethodException; {:try_start_12 .. :try_end_30} :catch_3a
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_30} :catch_33
    .catchall {:try_start_12 .. :try_end_30} :catchall_31

    return v0

    :catchall_31
    move-exception v0

    goto :goto_47

    :catch_33
    move-exception v2

    :try_start_34
    const-string v2, "isFeatureSupport Exception"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_3a
    move-exception v2

    const-string v2, "isFeatureSupport NoSuchMethodException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_41
    move-exception v2

    const-string v2, "FtFeature ClassNotFoundException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catchall {:try_start_34 .. :try_end_47} :catchall_31

    :goto_47
    return v1
.end method
