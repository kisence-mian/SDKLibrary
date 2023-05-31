.class public Lmobi/oneway/export/f/g;
.super Landroid/content/ContextWrapper;


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lmobi/oneway/export/f/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lmobi/oneway/export/f/g;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lmobi/oneway/export/f/g;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .registers 4

    new-instance v0, Lmobi/oneway/export/f/a;

    invoke-super {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmobi/oneway/export/f/g;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lmobi/oneway/export/f/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public getBaseContext()Landroid/content/Context;
    .registers 4

    new-instance v0, Lmobi/oneway/export/f/a;

    invoke-super {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lmobi/oneway/export/f/g;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lmobi/oneway/export/f/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .registers 2

    iget-object v0, p0, Lmobi/oneway/export/f/g;->b:Landroid/content/Context;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lmobi/oneway/export/f/g;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    invoke-super {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    goto :goto_a
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lmobi/oneway/export/f/g;->a:Ljava/lang/String;

    return-object v0
.end method
