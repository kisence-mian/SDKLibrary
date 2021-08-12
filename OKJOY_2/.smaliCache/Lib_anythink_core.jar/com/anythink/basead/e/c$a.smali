.class public final Lcom/anythink/basead/e/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/anythink/basead/e/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/anythink/basead/e/c$a;
    .registers 2

    .line 30
    iput p1, p0, Lcom/anythink/basead/e/c$a;->a:I

    .line 31
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/anythink/basead/e/c$a;
    .registers 2

    .line 45
    iput-object p1, p0, Lcom/anythink/basead/e/c$a;->d:Ljava/lang/String;

    .line 46
    return-object p0
.end method

.method public final a()Lcom/anythink/basead/e/c;
    .registers 3

    .line 65
    new-instance v0, Lcom/anythink/basead/e/c;

    invoke-direct {v0}, Lcom/anythink/basead/e/c;-><init>()V

    .line 66
    iget v1, p0, Lcom/anythink/basead/e/c$a;->a:I

    invoke-static {v0, v1}, Lcom/anythink/basead/e/c;->a(Lcom/anythink/basead/e/c;I)I

    .line 67
    iget v1, p0, Lcom/anythink/basead/e/c$a;->b:I

    invoke-static {v0, v1}, Lcom/anythink/basead/e/c;->b(Lcom/anythink/basead/e/c;I)I

    .line 68
    iget v1, p0, Lcom/anythink/basead/e/c$a;->c:I

    invoke-static {v0, v1}, Lcom/anythink/basead/e/c;->c(Lcom/anythink/basead/e/c;I)I

    .line 69
    iget-object v1, p0, Lcom/anythink/basead/e/c$a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/anythink/basead/e/c;->a(Lcom/anythink/basead/e/c;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    iget v1, p0, Lcom/anythink/basead/e/c$a;->e:I

    invoke-static {v0, v1}, Lcom/anythink/basead/e/c;->d(Lcom/anythink/basead/e/c;I)I

    .line 71
    iget v1, p0, Lcom/anythink/basead/e/c$a;->f:I

    invoke-static {v0, v1}, Lcom/anythink/basead/e/c;->e(Lcom/anythink/basead/e/c;I)I

    .line 72
    iget v1, p0, Lcom/anythink/basead/e/c$a;->g:I

    invoke-static {v0, v1}, Lcom/anythink/basead/e/c;->f(Lcom/anythink/basead/e/c;I)I

    .line 73
    return-object v0
.end method

.method public final b(I)Lcom/anythink/basead/e/c$a;
    .registers 2

    .line 35
    iput p1, p0, Lcom/anythink/basead/e/c$a;->b:I

    .line 36
    return-object p0
.end method

.method public final c(I)Lcom/anythink/basead/e/c$a;
    .registers 2

    .line 40
    iput p1, p0, Lcom/anythink/basead/e/c$a;->c:I

    .line 41
    return-object p0
.end method

.method public final d(I)Lcom/anythink/basead/e/c$a;
    .registers 2

    .line 50
    iput p1, p0, Lcom/anythink/basead/e/c$a;->e:I

    .line 51
    return-object p0
.end method

.method public final e(I)Lcom/anythink/basead/e/c$a;
    .registers 2

    .line 55
    iput p1, p0, Lcom/anythink/basead/e/c$a;->f:I

    .line 56
    return-object p0
.end method

.method public final f(I)Lcom/anythink/basead/e/c$a;
    .registers 2

    .line 60
    iput p1, p0, Lcom/anythink/basead/e/c$a;->g:I

    .line 61
    return-object p0
.end method
