.class Lcom/taptap/sdk/d$b;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/taptap/sdk/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/d;->a(ILandroid/content/Intent;Lcom/taptap/sdk/g;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taptap/sdk/g;

.field final synthetic b:Lcom/taptap/sdk/d;


# direct methods
.method constructor <init>(Lcom/taptap/sdk/d;Lcom/taptap/sdk/g;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/d$b;->b:Lcom/taptap/sdk/d;

    iput-object p2, p0, Lcom/taptap/sdk/d$b;->a:Lcom/taptap/sdk/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/taptap/sdk/LoginResponse;)V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/d$b;->b:Lcom/taptap/sdk/d;

    iget-object v1, p0, Lcom/taptap/sdk/d$b;->a:Lcom/taptap/sdk/g;

    invoke-static {v0, p1, v1}, Lcom/taptap/sdk/d;->a(Lcom/taptap/sdk/d;Lcom/taptap/sdk/LoginResponse;Lcom/taptap/sdk/g;)V

    return-void
.end method
