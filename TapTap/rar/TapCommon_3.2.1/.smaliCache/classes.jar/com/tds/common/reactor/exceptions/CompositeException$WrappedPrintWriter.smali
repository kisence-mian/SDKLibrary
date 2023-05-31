.class final Lcom/tds/common/reactor/exceptions/CompositeException$WrappedPrintWriter;
.super Lcom/tds/common/reactor/exceptions/CompositeException$PrintStreamOrWriter;
.source "CompositeException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/exceptions/CompositeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WrappedPrintWriter"
.end annotation


# instance fields
.field private final printWriter:Ljava/io/PrintWriter;


# direct methods
.method constructor <init>(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "printWriter"    # Ljava/io/PrintWriter;

    .line 250
    invoke-direct {p0}, Lcom/tds/common/reactor/exceptions/CompositeException$PrintStreamOrWriter;-><init>()V

    .line 251
    iput-object p1, p0, Lcom/tds/common/reactor/exceptions/CompositeException$WrappedPrintWriter;->printWriter:Ljava/io/PrintWriter;

    .line 252
    return-void
.end method


# virtual methods
.method lock()Ljava/lang/Object;
    .registers 2

    .line 256
    iget-object v0, p0, Lcom/tds/common/reactor/exceptions/CompositeException$WrappedPrintWriter;->printWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method println(Ljava/lang/Object;)V
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 261
    iget-object v0, p0, Lcom/tds/common/reactor/exceptions/CompositeException$WrappedPrintWriter;->printWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 262
    return-void
.end method
