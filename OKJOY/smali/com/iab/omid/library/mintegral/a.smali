.class public Lcom/iab/omid/library/mintegral/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .registers 3

    const-string v0, "Application Context cannot be null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/mintegral/d/e;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .registers 2

    const-string v0, "1.2.15-Mintegral"

    return-object v0
.end method

.method a(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/iab/omid/library/mintegral/a;->b(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/iab/omid/library/mintegral/a;->b()Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iab/omid/library/mintegral/a;->a(Z)V

    invoke-static {}, Lcom/iab/omid/library/mintegral/b/e;->a()Lcom/iab/omid/library/mintegral/b/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/mintegral/b/e;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/iab/omid/library/mintegral/b/b;->a()Lcom/iab/omid/library/mintegral/b/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/mintegral/b/b;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/iab/omid/library/mintegral/d/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/iab/omid/library/mintegral/b/c;->a()Lcom/iab/omid/library/mintegral/b/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/mintegral/b/c;->a(Landroid/content/Context;)V

    :cond_25
    return-void
.end method

.method a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/iab/omid/library/mintegral/a;->a:Z

    return-void
.end method

.method a(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/iab/omid/library/mintegral/a;->a:Z

    return v0
.end method
