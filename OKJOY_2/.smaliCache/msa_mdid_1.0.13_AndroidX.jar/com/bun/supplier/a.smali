.class public Lcom/bun/supplier/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bun/supplier/InnerIdSupplier;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native a(Lcom/bun/supplier/SupplierListener;)V
.end method

.method public native a()Z
.end method

.method public native getAAID()Ljava/lang/String;
.end method

.method public native getOAID()Ljava/lang/String;
.end method

.method public native getUDID()Ljava/lang/String;
.end method

.method public native getVAID()Ljava/lang/String;
.end method

.method public native isSupported()Z
.end method

.method public native shutDown()V
.end method
