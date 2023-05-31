.class public Lcom/taptap/sdk/m;
.super Ljava/lang/Object;
.source "Validate.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 2

    .line 13
    sget-boolean v0, Lcom/taptap/sdk/h;->a:Z

    if-eqz v0, :cond_5

    return-void

    .line 14
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "sdk has not initialized. please call TapTapSdk.sdkInitialize first"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;Z)V
    .registers 3

    .line 3
    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/taptap/sdk/m;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    const-string v0, "android.permission.INTERNET"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1c

    const-string p0, "No internet permissions granted for the app, please add <uses-permission android:name=\"android.permission.INTERNET\" /> to your AndroidManifest.xml."

    if-nez p1, :cond_16

    .line 11
    invoke-static {p0}, Lcom/taptap/sdk/c;->a(Ljava/lang/String;)V

    goto :goto_1c

    .line 12
    :cond_16
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    :goto_1c
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 5

    if-eqz p0, :cond_3

    return-void

    .line 1
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Argument \'"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\' can not be null"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/taptap/sdk/c;->a(Ljava/lang/String;)V

    .line 2
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Landroid/content/Context;Z)V
    .registers 5

    .line 1
    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/taptap/sdk/m;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 5
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/taptap/sdk/ui/TapTapActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 p0, 0x1

    .line 7
    :try_start_13
    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_17} :catch_18

    goto :goto_1a

    :catch_18
    move-exception p0

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    if-nez p0, :cond_2a

    const-string p0, "TapTapActivity is not declared in the AndroidManifest.xml, please add com.taptap.sdk.ui.TapTapActivity to your AndroidManifest.xml file. "

    if-nez p1, :cond_24

    .line 18
    invoke-static {p0}, Lcom/taptap/sdk/c;->a(Ljava/lang/String;)V

    goto :goto_2a

    .line 19
    :cond_24
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    :goto_2a
    return-void
.end method
