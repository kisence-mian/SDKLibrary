.class public Lcom/iab/omid/library/mintegral/b/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/iab/omid/library/mintegral/b/c;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/iab/omid/library/mintegral/b/c;

    invoke-direct {v0}, Lcom/iab/omid/library/mintegral/b/c;-><init>()V

    sput-object v0, Lcom/iab/omid/library/mintegral/b/c;->a:Lcom/iab/omid/library/mintegral/b/c;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/iab/omid/library/mintegral/b/c;
    .registers 1

    sget-object v0, Lcom/iab/omid/library/mintegral/b/c;->a:Lcom/iab/omid/library/mintegral/b/c;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .registers 3

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    :goto_6
    iput-object v0, p0, Lcom/iab/omid/library/mintegral/b/c;->b:Landroid/content/Context;

    return-void

    :cond_9
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public b()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/iab/omid/library/mintegral/b/c;->b:Landroid/content/Context;

    return-object v0
.end method
