.class public Lokjoy/i/b$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokjoy/i/b;->onFail(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lokjoy/i/b;


# direct methods
.method public constructor <init>(Lokjoy/i/b;)V
    .registers 2

    iput-object p1, p0, Lokjoy/i/b$a;->a:Lokjoy/i/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lokjoy/i/b$a;->a:Lokjoy/i/b;

    iget-object v1, v0, Lokjoy/i/b;->b:Lokjoy/k/a;

    .line 1
    const/16 v2, 0x1e

    iput v2, v1, Lokjoy/k/a;->h:I

    .line 2
    iget-object v0, v0, Lokjoy/i/b;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lokjoy/a/g;->a(Landroid/content/Context;Lokjoy/k/a;)V

    return-void
.end method
