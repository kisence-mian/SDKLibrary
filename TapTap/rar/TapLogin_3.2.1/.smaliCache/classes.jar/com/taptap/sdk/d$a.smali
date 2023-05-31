.class Lcom/taptap/sdk/d$a;
.super Ljava/lang/Object;
.source "LoginManager.java"

# interfaces
.implements Lcom/taptap/sdk/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taptap/sdk/d;->a(Lcom/taptap/sdk/a;Lcom/taptap/sdk/g;)V
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
    iput-object p1, p0, Lcom/taptap/sdk/d$a;->b:Lcom/taptap/sdk/d;

    iput-object p2, p0, Lcom/taptap/sdk/d$a;->a:Lcom/taptap/sdk/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)Z
    .registers 5

    .line 1
    iget-object v0, p0, Lcom/taptap/sdk/d$a;->b:Lcom/taptap/sdk/d;

    iget-object v1, p0, Lcom/taptap/sdk/d$a;->a:Lcom/taptap/sdk/g;

    invoke-static {v0, p1, p2, v1}, Lcom/taptap/sdk/d;->a(Lcom/taptap/sdk/d;ILandroid/content/Intent;Lcom/taptap/sdk/g;)Z

    move-result p1

    return p1
.end method
