.class final Lcom/tds/common/reactor/exceptions/CompositeException$WrappedPrintStream;
.super Lcom/tds/common/reactor/exceptions/CompositeException$PrintStreamOrWriter;
.source "CompositeException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/reactor/exceptions/CompositeException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WrappedPrintStream"
.end annotation


# instance fields
.field private final printStream:Ljava/io/PrintStream;


# direct methods
.method constructor <init>(Ljava/io/PrintStream;)V
    .registers 2
    .param p1, "printStream"    # Ljava/io/PrintStream;

    .line 232
    invoke-direct {p0}, Lcom/tds/common/reactor/exceptions/CompositeException$PrintStreamOrWriter;-><init>()V

    .line 233
    iput-object p1, p0, Lcom/tds/common/reactor/exceptions/CompositeException$WrappedPrintStream;->printStream:Ljava/io/PrintStream;

    .line 234
    return-void
.end method


# virtual methods
.method lock()Ljava/lang/Object;
    .registers 2

    .line 238
    iget-object v0, p0, Lcom/tds/common/reactor/exceptions/CompositeException$WrappedPrintStream;->printStream:Ljava/io/PrintStream;

    return-object v0
.end method

.method println(Ljava/lang/Object;)V
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 243
    iget-object v0, p0, Lcom/tds/common/reactor/exceptions/CompositeException$WrappedPrintStream;->printStream:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 244
    return-void
.end method
