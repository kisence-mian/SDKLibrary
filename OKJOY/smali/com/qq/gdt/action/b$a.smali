.class Lcom/qq/gdt/action/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qq/gdt/action/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/qq/gdt/action/b$a;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/qq/gdt/action/b$a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/qq/gdt/action/b$a;->c:Ljava/lang/String;

    return-void
.end method
