.class final Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;
.super Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;
.source "OperatorReplay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SizeAndTimeBoundReplayBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2ffd21f3bea38aacL


# instance fields
.field final limit:I

.field final maxAgeInMillis:J

.field final scheduler:Lrx/Scheduler;


# direct methods
.method public constructor <init>(IJLrx/Scheduler;)V
    .registers 5
    .param p1, "limit"    # I
    .param p2, "maxAgeInMillis"    # J
    .param p4, "scheduler"    # Lrx/Scheduler;

    .prologue
    .line 1227
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;, "Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer<TT;>;"
    invoke-direct {p0}, Lrx/internal/operators/OperatorReplay$BoundedReplayBuffer;-><init>()V

    .line 1228
    iput-object p4, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Lrx/Scheduler;

    .line 1229
    iput p1, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->limit:I

    .line 1230
    iput-wide p2, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->maxAgeInMillis:J

    .line 1231
    return-void
.end method


# virtual methods
.method enterTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1235
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;, "Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer<TT;>;"
    new-instance v0, Lrx/schedulers/Timestamped;

    iget-object v1, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Lrx/Scheduler;

    invoke-virtual {v1}, Lrx/Scheduler;->now()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, p1}, Lrx/schedulers/Timestamped;-><init>(JLjava/lang/Object;)V

    return-object v0
.end method

.method getInitialHead()Lrx/internal/operators/OperatorReplay$Node;
    .registers 9

    .prologue
    .line 1245
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;, "Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer<TT;>;"
    iget-object v4, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Lrx/Scheduler;

    invoke-virtual {v4}, Lrx/Scheduler;->now()J

    move-result-wide v4

    iget-wide v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->maxAgeInMillis:J

    sub-long v2, v4, v6

    .line 1246
    .local v2, "timeLimit":J
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorReplay$Node;

    .line 1248
    .local v1, "prev":Lrx/internal/operators/OperatorReplay$Node;
    invoke-virtual {v1}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorReplay$Node;

    .line 1249
    .local v0, "next":Lrx/internal/operators/OperatorReplay$Node;
    :goto_16
    if-eqz v0, :cond_2c

    iget-object v4, v0, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    check-cast v4, Lrx/schedulers/Timestamped;

    invoke-virtual {v4}, Lrx/schedulers/Timestamped;->getTimestampMillis()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-gtz v4, :cond_2c

    .line 1250
    move-object v1, v0

    .line 1251
    invoke-virtual {v0}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "next":Lrx/internal/operators/OperatorReplay$Node;
    check-cast v0, Lrx/internal/operators/OperatorReplay$Node;

    .restart local v0    # "next":Lrx/internal/operators/OperatorReplay$Node;
    goto :goto_16

    .line 1254
    :cond_2c
    return-object v1
.end method

.method leaveTransform(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 1240
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;, "Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer<TT;>;"
    check-cast p1, Lrx/schedulers/Timestamped;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Lrx/schedulers/Timestamped;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method truncate()V
    .registers 11

    .prologue
    .line 1259
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;, "Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer<TT;>;"
    iget-object v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Lrx/Scheduler;

    invoke-virtual {v6}, Lrx/Scheduler;->now()J

    move-result-wide v6

    iget-wide v8, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->maxAgeInMillis:J

    sub-long v4, v6, v8

    .line 1261
    .local v4, "timeLimit":J
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/internal/operators/OperatorReplay$Node;

    .line 1262
    .local v2, "prev":Lrx/internal/operators/OperatorReplay$Node;
    invoke-virtual {v2}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorReplay$Node;

    .line 1264
    .local v1, "next":Lrx/internal/operators/OperatorReplay$Node;
    const/4 v0, 0x0

    .line 1266
    .local v0, "e":I
    :goto_17
    if-eqz v1, :cond_4b

    .line 1267
    iget v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->size:I

    iget v7, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->limit:I

    if-le v6, v7, :cond_2f

    .line 1268
    add-int/lit8 v0, v0, 0x1

    .line 1269
    iget v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->size:I

    .line 1270
    move-object v2, v1

    .line 1271
    invoke-virtual {v1}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "next":Lrx/internal/operators/OperatorReplay$Node;
    check-cast v1, Lrx/internal/operators/OperatorReplay$Node;

    .restart local v1    # "next":Lrx/internal/operators/OperatorReplay$Node;
    goto :goto_17

    .line 1273
    :cond_2f
    iget-object v3, v1, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    check-cast v3, Lrx/schedulers/Timestamped;

    .line 1274
    .local v3, "v":Lrx/schedulers/Timestamped;, "Lrx/schedulers/Timestamped<*>;"
    invoke-virtual {v3}, Lrx/schedulers/Timestamped;->getTimestampMillis()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-gtz v6, :cond_4b

    .line 1275
    add-int/lit8 v0, v0, 0x1

    .line 1276
    iget v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->size:I

    .line 1277
    move-object v2, v1

    .line 1278
    invoke-virtual {v1}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "next":Lrx/internal/operators/OperatorReplay$Node;
    check-cast v1, Lrx/internal/operators/OperatorReplay$Node;

    .line 1282
    .restart local v1    # "next":Lrx/internal/operators/OperatorReplay$Node;
    goto :goto_17

    .line 1287
    .end local v3    # "v":Lrx/schedulers/Timestamped;, "Lrx/schedulers/Timestamped<*>;"
    :cond_4b
    if-eqz v0, :cond_50

    .line 1288
    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->setFirst(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 1290
    :cond_50
    return-void
.end method

.method truncateFinal()V
    .registers 11

    .prologue
    .line 1293
    .local p0, "this":Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;, "Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer<TT;>;"
    iget-object v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->scheduler:Lrx/Scheduler;

    invoke-virtual {v6}, Lrx/Scheduler;->now()J

    move-result-wide v6

    iget-wide v8, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->maxAgeInMillis:J

    sub-long v4, v6, v8

    .line 1295
    .local v4, "timeLimit":J
    invoke-virtual {p0}, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lrx/internal/operators/OperatorReplay$Node;

    .line 1296
    .local v2, "prev":Lrx/internal/operators/OperatorReplay$Node;
    invoke-virtual {v2}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorReplay$Node;

    .line 1298
    .local v1, "next":Lrx/internal/operators/OperatorReplay$Node;
    const/4 v0, 0x0

    .line 1300
    .local v0, "e":I
    :goto_17
    if-eqz v1, :cond_3a

    iget v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->size:I

    const/4 v7, 0x1

    if-le v6, v7, :cond_3a

    .line 1301
    iget-object v3, v1, Lrx/internal/operators/OperatorReplay$Node;->value:Ljava/lang/Object;

    check-cast v3, Lrx/schedulers/Timestamped;

    .line 1302
    .local v3, "v":Lrx/schedulers/Timestamped;, "Lrx/schedulers/Timestamped<*>;"
    invoke-virtual {v3}, Lrx/schedulers/Timestamped;->getTimestampMillis()J

    move-result-wide v6

    cmp-long v6, v6, v4

    if-gtz v6, :cond_3a

    .line 1303
    add-int/lit8 v0, v0, 0x1

    .line 1304
    iget v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->size:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->size:I

    .line 1305
    move-object v2, v1

    .line 1306
    invoke-virtual {v1}, Lrx/internal/operators/OperatorReplay$Node;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "next":Lrx/internal/operators/OperatorReplay$Node;
    check-cast v1, Lrx/internal/operators/OperatorReplay$Node;

    .line 1310
    .restart local v1    # "next":Lrx/internal/operators/OperatorReplay$Node;
    goto :goto_17

    .line 1314
    .end local v3    # "v":Lrx/schedulers/Timestamped;, "Lrx/schedulers/Timestamped<*>;"
    :cond_3a
    if-eqz v0, :cond_3f

    .line 1315
    invoke-virtual {p0, v2}, Lrx/internal/operators/OperatorReplay$SizeAndTimeBoundReplayBuffer;->setFirst(Lrx/internal/operators/OperatorReplay$Node;)V

    .line 1317
    :cond_3f
    return-void
.end method
