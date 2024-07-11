.class public Lokjoy/r/b;
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

    const-string v0, "test"

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_70

    invoke-virtual {p0}, Lokjoy/r/b;->e()Z

    move-result v2

    if-eqz v2, :cond_6f

    iget-object v2, p0, Lokjoy/r/a;->a:Landroid/app/Activity;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v2

    .line 1
    iget-object v3, p0, Lokjoy/r/a;->a:Landroid/app/Activity;

    .line 2
    const/4 v4, 0x2

    new-array v5, v4, [I

    fill-array-data v5, :array_7c

    const/4 v6, 0x0

    :try_start_29
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v7, "com.huawei.android.util.HwNotchSizeUtil"

    invoke-virtual {v3, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_33
    .catch Ljava/lang/ClassNotFoundException; {:try_start_29 .. :try_end_33} :catch_52
    .catch Ljava/lang/NoSuchMethodException; {:try_start_29 .. :try_end_33} :catch_4e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_33} :catch_47
    .catchall {:try_start_29 .. :try_end_33} :catchall_45

    const-string v7, "getNotchSize"

    :try_start_35
    new-array v8, v6, [Ljava/lang/Class;

    invoke-virtual {v3, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Object;

    invoke-virtual {v7, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I
    :try_end_43
    .catch Ljava/lang/ClassNotFoundException; {:try_start_35 .. :try_end_43} :catch_52
    .catch Ljava/lang/NoSuchMethodException; {:try_start_35 .. :try_end_43} :catch_4e
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_43} :catch_47
    .catchall {:try_start_35 .. :try_end_43} :catchall_45

    move-object v5, v3

    goto :goto_56

    :catchall_45
    move-exception v0

    goto :goto_56

    :catch_47
    move-exception v3

    :try_start_48
    const-string v3, "getNotchSize Exception"

    :goto_4a
    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_56

    :catch_4e
    move-exception v3

    const-string v3, "getNotchSize NoSuchMethodException"

    goto :goto_4a

    :catch_52
    move-exception v3

    const-string v3, "getNotchSize ClassNotFoundException"
    :try_end_55
    .catchall {:try_start_48 .. :try_end_55} :catchall_45

    goto :goto_4a

    .line 3
    :goto_56
    const/4 v0, 0x1

    aget v3, v5, v0

    .line 4
    invoke-virtual {p0}, Lokjoy/r/b;->d()Z

    move-result v5

    if-eqz v5, :cond_6f

    if-eqz v2, :cond_67

    if-eq v2, v0, :cond_64

    goto :goto_6f

    :cond_64
    aput v3, v1, v6

    goto :goto_6f

    :cond_67
    invoke-virtual {p0}, Lokjoy/r/a;->c()Z

    move-result v0

    if-nez v0, :cond_6f

    aput v3, v1, v4

    :cond_6f
    :goto_6f
    return-object v1

    :array_70
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_7c
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public d()Z
    .registers 7

    iget-object v0, p0, Lokjoy/r/a;->a:Landroid/app/Activity;

    .line 1
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "android.notch_support"

    invoke-static {v0, v2, v1}, Lokjoy/a/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_14

    goto :goto_40

    :cond_14
    const/4 v1, 0x0

    .line 2
    :try_start_15
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    const/16 v5, 0x80

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_25} :catch_26

    goto :goto_30

    :catch_26
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "getMetaDataBundle"

    invoke-static {v5, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_30
    if-eqz v1, :cond_3d

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3e

    :cond_3d
    move v0, v3

    :goto_3e
    if-eqz v0, :cond_41

    .line 1
    :goto_40
    const/4 v3, 0x1

    .line 2
    :cond_41
    return v3
.end method

.method public e()Z
    .registers 6

    const-string v0, "test"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lokjoy/r/a;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "com.huawei.android.util.HwNotchSizeUtil"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_f} :catch_34
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_f} :catch_2d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_f} :catch_26
    .catchall {:try_start_3 .. :try_end_f} :catchall_24

    const-string v3, "hasNotchInScreen"

    :try_start_11
    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_23
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_23} :catch_34
    .catch Ljava/lang/NoSuchMethodException; {:try_start_11 .. :try_end_23} :catch_2d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_23} :catch_26
    .catchall {:try_start_11 .. :try_end_23} :catchall_24

    return v0

    :catchall_24
    move-exception v0

    goto :goto_3a

    :catch_26
    move-exception v2

    :try_start_27
    const-string v2, "hasNotchInScreen Exception"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_2d
    move-exception v2

    const-string v2, "hasNotchInScreen NoSuchMethodException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_34
    move-exception v2

    const-string v2, "HwNotchSizeUtil ClassNotFoundException"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_27 .. :try_end_3a} :catchall_24

    :goto_3a
    return v1
.end method
