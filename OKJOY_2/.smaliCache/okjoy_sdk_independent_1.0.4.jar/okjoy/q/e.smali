.class public final Lokjoy/q/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bun/supplier/IIdentifierListener;


# instance fields
.field public final synthetic a:Lokjoy/q/f;


# direct methods
.method public constructor <init>(Lokjoy/q/f;)V
    .registers 2

    iput-object p1, p0, Lokjoy/q/e;->a:Lokjoy/q/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSupport(ZLcom/bun/supplier/IdSupplier;)V
    .registers 3

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-interface {p2}, Lcom/bun/supplier/IdSupplier;->getOAID()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\u83b7\u53d6OAID\uff1a"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lokjoy/q/e;->a:Lokjoy/q/f;

    if-eqz p2, :cond_13

    invoke-interface {p2, p1}, Lokjoy/q/f;->onSuccess(Ljava/lang/String;)V

    :cond_13
    return-void
.end method
