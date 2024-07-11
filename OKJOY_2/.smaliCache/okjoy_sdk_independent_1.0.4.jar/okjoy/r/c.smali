.class public Lokjoy/r/c;
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
    .registers 5

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_38

    .line 1
    iget-object v1, p0, Lokjoy/r/a;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 2
    iget-object v1, p0, Lokjoy/r/a;->a:Landroid/app/Activity;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    const/16 v2, 0x50

    const/4 v3, 0x1

    if-eq v1, v3, :cond_34

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2f

    goto :goto_37

    :cond_2f
    const/16 v1, -0x50

    aput v1, v0, v3

    goto :goto_37

    :cond_34
    const/4 v1, 0x0

    aput v2, v0, v1

    :cond_37
    :goto_37
    return-object v0

    :array_38
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

    if-nez v0, :cond_24

    .line 1
    iget-object v0, p0, Lokjoy/r/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_24
    invoke-super {p0}, Lokjoy/r/a;->c()Z

    move-result v0

    return v0
.end method
