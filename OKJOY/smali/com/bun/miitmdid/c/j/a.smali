.class public Lcom/bun/miitmdid/c/j/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bun/supplier/InnerIdSupplier;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field

.field private b:Landroid/content/Context;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .annotation build Landroid/support/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bun/miitmdid/c/j/a;->b:Landroid/content/Context;

    const-string v0, ""

    iput-object v0, p0, Lcom/bun/miitmdid/c/j/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public native a(Lcom/bun/supplier/SupplierListener;)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native a(Ljava/lang/String;)V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native a()Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native getAAID()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native getOAID()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native getUDID()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native getVAID()Ljava/lang/String;
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native isSupported()Z
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method

.method public native shutDown()V
    .annotation build Landroid/support/annotation/Keep;
    .end annotation
.end method
