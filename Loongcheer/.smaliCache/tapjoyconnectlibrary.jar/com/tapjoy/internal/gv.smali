.class public abstract Lcom/tapjoy/internal/gv;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/tapjoy/internal/gv;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .registers 2

    .line 25
    sget-object v0, Lcom/tapjoy/internal/gv;->a:Lcom/tapjoy/internal/gv;

    if-eqz v0, :cond_7

    .line 26
    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/gv;->a(Landroid/app/Activity;)V

    .line 28
    :cond_7
    return-void
.end method


# virtual methods
.method protected abstract a(Landroid/app/Activity;)V
.end method
