.class Lcom/bytedance/tea/crash/g/m$a;
.super Ljava/lang/Object;
.source "Stack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/tea/crash/g/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Ljava/io/PrintWriter;)V
    .registers 2

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/bytedance/tea/crash/g/m$a;->a:Ljava/io/PrintWriter;

    .line 196
    return-void
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/bytedance/tea/crash/g/m$a;->a:Ljava/io/PrintWriter;

    return-object v0
.end method

.method a(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/bytedance/tea/crash/g/m$a;->a:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 204
    return-void
.end method
