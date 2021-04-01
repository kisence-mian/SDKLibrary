.class public Lcom/qq/gdt/action/d/a;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/qq/gdt/action/d/a;->a:I

    iput-object p2, p0, Lcom/qq/gdt/action/d/a;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/qq/gdt/action/d/a;->a:I

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/qq/gdt/action/d/a;->a:I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/qq/gdt/action/d/a;->b:Ljava/lang/String;

    return-void
.end method
