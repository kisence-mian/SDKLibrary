.class public Landroidx/test/internal/runner/RunnerArgs$TestArg;
.super Ljava/lang/Object;
.source "RunnerArgs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/runner/RunnerArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TestArg"
.end annotation


# instance fields
.field public final methodName:Ljava/lang/String;

.field public final testClassName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "className"
        }
    .end annotation

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/test/internal/runner/RunnerArgs$TestArg;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "className",
            "methodName"
        }
    .end annotation

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Landroidx/test/internal/runner/RunnerArgs$TestArg;->testClassName:Ljava/lang/String;

    .line 137
    iput-object p2, p0, Landroidx/test/internal/runner/RunnerArgs$TestArg;->methodName:Ljava/lang/String;

    .line 138
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    .line 146
    iget-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$TestArg;->methodName:Ljava/lang/String;

    if-eqz v0, :cond_31

    iget-object v1, p0, Landroidx/test/internal/runner/RunnerArgs$TestArg;->testClassName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_33

    :cond_31
    iget-object v0, p0, Landroidx/test/internal/runner/RunnerArgs$TestArg;->testClassName:Ljava/lang/String;

    :goto_33
    return-object v0
.end method
