.class public Lokjoy/p/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:I

.field public b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lokjoy/p/a;->a:I

    iput-object p2, p0, Lokjoy/p/a;->b:Ljava/lang/String;

    return-void
.end method
