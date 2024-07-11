.class final Lcom/tapjoy/internal/eu;
.super Lcom/tapjoy/internal/et;
.source "SourceFile"


# instance fields
.field private final c:Lcom/tapjoy/internal/gd;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 9
    invoke-direct {p0}, Lcom/tapjoy/internal/et;-><init>()V

    .line 11
    new-instance v0, Lcom/tapjoy/internal/eu$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/eu$1;-><init>(Lcom/tapjoy/internal/eu;)V

    iput-object v0, p0, Lcom/tapjoy/internal/eu;->c:Lcom/tapjoy/internal/gd;

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/eu;Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
    .registers 5

    .line 9
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tapjoy/internal/et;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/tapjoy/TJConnectListener;",
            ")Z"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/tapjoy/internal/eu;->c:Lcom/tapjoy/internal/gd;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tapjoy/internal/gd;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    move-result p1

    return p1
.end method
