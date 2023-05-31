.class public abstract Lcom/qq/gdt/action/c/a;
.super Ljava/lang/Object;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/qq/gdt/action/c/c;
.end method

.method public final a(I)V
    .registers 2

    iput p1, p0, Lcom/qq/gdt/action/c/a;->a:I

    return-void
.end method

.method public abstract a(Lcom/qq/gdt/action/c/c;)V
.end method

.method public final b()I
    .registers 2

    iget v0, p0, Lcom/qq/gdt/action/c/a;->a:I

    return v0
.end method

.method protected final c()Lcom/qq/gdt/action/c/c;
    .registers 2

    new-instance v0, Lcom/qq/gdt/action/c/c;

    invoke-direct {v0}, Lcom/qq/gdt/action/c/c;-><init>()V

    return-object v0
.end method
