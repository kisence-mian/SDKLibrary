.class public Lcom/taptap/sdk/AccountGlobalError$a;
.super Ljava/lang/Object;
.source "AccountGlobalError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taptap/sdk/AccountGlobalError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const/4 v0, -0x1

    iput v0, p0, Lcom/taptap/sdk/AccountGlobalError$a;->a:I

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/taptap/sdk/AccountGlobalError$a;->b:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/taptap/sdk/AccountGlobalError$a;->c:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/taptap/sdk/AccountGlobalError$a;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/taptap/sdk/AccountGlobalError$a;
    .registers 2

    .line 1
    iput p1, p0, Lcom/taptap/sdk/AccountGlobalError$a;->a:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/taptap/sdk/AccountGlobalError$a;
    .registers 2

    .line 2
    iput-object p1, p0, Lcom/taptap/sdk/AccountGlobalError$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a()Lcom/taptap/sdk/AccountGlobalError;
    .registers 3

    .line 3
    new-instance v0, Lcom/taptap/sdk/AccountGlobalError;

    invoke-direct {v0}, Lcom/taptap/sdk/AccountGlobalError;-><init>()V

    .line 4
    iget v1, p0, Lcom/taptap/sdk/AccountGlobalError$a;->a:I

    # setter for: Lcom/taptap/sdk/AccountGlobalError;->code:I
    invoke-static {v0, v1}, Lcom/taptap/sdk/AccountGlobalError;->access$002(Lcom/taptap/sdk/AccountGlobalError;I)I

    .line 5
    iget-object v1, p0, Lcom/taptap/sdk/AccountGlobalError$a;->b:Ljava/lang/String;

    # setter for: Lcom/taptap/sdk/AccountGlobalError;->msg:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/taptap/sdk/AccountGlobalError;->access$102(Lcom/taptap/sdk/AccountGlobalError;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-object v1, p0, Lcom/taptap/sdk/AccountGlobalError$a;->d:Ljava/lang/String;

    # setter for: Lcom/taptap/sdk/AccountGlobalError;->errorDescription:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/taptap/sdk/AccountGlobalError;->access$202(Lcom/taptap/sdk/AccountGlobalError;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    iget-object v1, p0, Lcom/taptap/sdk/AccountGlobalError$a;->c:Ljava/lang/String;

    # setter for: Lcom/taptap/sdk/AccountGlobalError;->error:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/taptap/sdk/AccountGlobalError;->access$302(Lcom/taptap/sdk/AccountGlobalError;Ljava/lang/String;)Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/taptap/sdk/AccountGlobalError$a;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/AccountGlobalError$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/taptap/sdk/AccountGlobalError$a;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/taptap/sdk/AccountGlobalError$a;->b:Ljava/lang/String;

    return-object p0
.end method
