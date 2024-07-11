.class final Lcom/tapjoy/internal/eu$1;
.super Lcom/tapjoy/internal/gd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/eu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/internal/eu;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/eu;)V
    .registers 2

    .line 11
    iput-object p1, p0, Lcom/tapjoy/internal/eu$1;->a:Lcom/tapjoy/internal/eu;

    invoke-direct {p0}, Lcom/tapjoy/internal/gd;-><init>()V

    return-void
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

    .line 15
    iget-object v0, p0, Lcom/tapjoy/internal/eu$1;->a:Lcom/tapjoy/internal/eu;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/tapjoy/internal/eu;->a(Lcom/tapjoy/internal/eu;Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    move-result p1

    return p1
.end method
