.class Lmobi/oneway/export/e/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmobi/oneway/export/e/d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmobi/oneway/export/e/d;


# direct methods
.method constructor <init>(Lmobi/oneway/export/e/d;)V
    .registers 2

    iput-object p1, p0, Lmobi/oneway/export/e/d$1;->a:Lmobi/oneway/export/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lmobi/oneway/export/e/d$1;->a:Lmobi/oneway/export/e/d;

    invoke-static {v0}, Lmobi/oneway/export/e/d;->a(Lmobi/oneway/export/e/d;)Lmobi/oneway/export/e/d$a;

    move-result-object v0

    invoke-interface {v0}, Lmobi/oneway/export/e/d$a;->timeout()V

    return-void
.end method
