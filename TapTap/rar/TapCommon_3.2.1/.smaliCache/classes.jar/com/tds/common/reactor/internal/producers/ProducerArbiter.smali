.class public final Lcom/tds/common/reactor/internal/producers/ProducerArbiter;
.super Ljava/lang/Object;
.source "ProducerArbiter.java"

# interfaces
.implements Lcom/tds/common/reactor/Producer;


# static fields
.field static final NULL_PRODUCER:Lcom/tds/common/reactor/Producer;


# instance fields
.field currentProducer:Lcom/tds/common/reactor/Producer;

.field emitting:Z

.field missedProduced:J

.field missedProducer:Lcom/tds/common/reactor/Producer;

.field missedRequested:J

.field requested:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    new-instance v0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter$1;

    invoke-direct {v0}, Lcom/tds/common/reactor/internal/producers/ProducerArbiter$1;-><init>()V

    sput-object v0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->NULL_PRODUCER:Lcom/tds/common/reactor/Producer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public emitLoop()V
    .registers 16

    .line 146
    :goto_0
    monitor-enter p0

    .line 147
    :try_start_1
    iget-wide v0, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->missedRequested:J

    .line 148
    .local v0, "localRequested":J
    iget-wide v2, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->missedProduced:J

    .line 149
    .local v2, "localProduced":J
    iget-object v4, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->missedProducer:Lcom/tds/common/reactor/Producer;

    .line 150
    .local v4, "localProducer":Lcom/tds/common/reactor/Producer;
    const-wide/16 v5, 0x0

    cmp-long v7, v0, v5

    if-nez v7, :cond_18

    cmp-long v7, v2, v5

    if-nez v7, :cond_18

    if-nez v4, :cond_18

    .line 153
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->emitting:Z

    .line 154
    monitor-exit p0

    return-void

    .line 156
    :cond_18
    iput-wide v5, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->missedRequested:J

    .line 157
    iput-wide v5, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->missedProduced:J

    .line 158
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->missedProducer:Lcom/tds/common/reactor/Producer;

    .line 159
    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_6a

    .line 161
    iget-wide v8, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->requested:J

    .line 163
    .local v8, "r":J
    const-wide v10, 0x7fffffffffffffffL

    cmp-long v12, v8, v10

    if-eqz v12, :cond_4f

    .line 164
    add-long v12, v8, v0

    .line 165
    .local v12, "u":J
    cmp-long v14, v12, v5

    if-ltz v14, :cond_48

    cmp-long v10, v12, v10

    if-nez v10, :cond_36

    goto :goto_48

    .line 169
    :cond_36
    sub-long v10, v12, v2

    .line 170
    .local v10, "v":J
    cmp-long v14, v10, v5

    if-ltz v14, :cond_40

    .line 173
    move-wide v8, v10

    .line 174
    iput-wide v10, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->requested:J

    goto :goto_4f

    .line 171
    :cond_40
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "more produced than requested"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 166
    .end local v10    # "v":J
    :cond_48
    :goto_48
    const-wide v8, 0x7fffffffffffffffL

    .line 167
    iput-wide v8, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->requested:J

    .line 177
    .end local v12    # "u":J
    :cond_4f
    :goto_4f
    if-eqz v4, :cond_5e

    .line 178
    sget-object v5, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->NULL_PRODUCER:Lcom/tds/common/reactor/Producer;

    if-ne v4, v5, :cond_58

    .line 179
    iput-object v7, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->currentProducer:Lcom/tds/common/reactor/Producer;

    goto :goto_69

    .line 181
    :cond_58
    iput-object v4, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->currentProducer:Lcom/tds/common/reactor/Producer;

    .line 182
    invoke-interface {v4, v8, v9}, Lcom/tds/common/reactor/Producer;->request(J)V

    goto :goto_69

    .line 185
    :cond_5e
    iget-object v7, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->currentProducer:Lcom/tds/common/reactor/Producer;

    .line 186
    .local v7, "p":Lcom/tds/common/reactor/Producer;
    if-eqz v7, :cond_69

    cmp-long v5, v0, v5

    if-eqz v5, :cond_69

    .line 187
    invoke-interface {v7, v0, v1}, Lcom/tds/common/reactor/Producer;->request(J)V

    .line 190
    .end local v0    # "localRequested":J
    .end local v2    # "localProduced":J
    .end local v4    # "localProducer":Lcom/tds/common/reactor/Producer;
    .end local v7    # "p":Lcom/tds/common/reactor/Producer;
    .end local v8    # "r":J
    :cond_69
    :goto_69
    goto :goto_0

    .line 159
    :catchall_6a
    move-exception v0

    :try_start_6b
    monitor-exit p0
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw v0
.end method

.method public produced(J)V
    .registers 11
    .param p1, "n"    # J

    .line 82
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_52

    .line 85
    monitor-enter p0

    .line 86
    :try_start_7
    iget-boolean v2, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->emitting:Z

    if-eqz v2, :cond_12

    .line 87
    iget-wide v0, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->missedProduced:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->missedProduced:J

    .line 88
    monitor-exit p0

    return-void

    .line 90
    :cond_12
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->emitting:Z

    .line 91
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_4f

    .line 93
    const/4 v2, 0x0

    .line 95
    .local v2, "skipFinal":Z
    const/4 v3, 0x0

    :try_start_18
    iget-wide v4, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->requested:J

    .line 96
    .local v4, "r":J
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v6, v4, v6

    if-eqz v6, :cond_34

    .line 97
    sub-long v6, v4, p1

    .line 98
    .local v6, "u":J
    cmp-long v0, v6, v0

    if-ltz v0, :cond_2c

    .line 101
    iput-wide v6, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->requested:J

    goto :goto_34

    .line 99
    :cond_2c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "more items arrived than were requested"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "skipFinal":Z
    .end local p0    # "this":Lcom/tds/common/reactor/internal/producers/ProducerArbiter;
    .end local p1    # "n":J
    throw v0

    .line 104
    .end local v6    # "u":J
    .restart local v2    # "skipFinal":Z
    .restart local p0    # "this":Lcom/tds/common/reactor/internal/producers/ProducerArbiter;
    .restart local p1    # "n":J
    :cond_34
    :goto_34
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->emitLoop()V
    :try_end_37
    .catchall {:try_start_18 .. :try_end_37} :catchall_43

    .line 105
    const/4 v0, 0x1

    .line 107
    .end local v2    # "skipFinal":Z
    .end local v4    # "r":J
    .local v0, "skipFinal":Z
    if-nez v0, :cond_42

    .line 108
    monitor-enter p0

    .line 109
    :try_start_3b
    iput-boolean v3, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->emitting:Z

    .line 110
    monitor-exit p0

    goto :goto_42

    :catchall_3f
    move-exception v1

    monitor-exit p0
    :try_end_41
    .catchall {:try_start_3b .. :try_end_41} :catchall_3f

    throw v1

    .line 113
    :cond_42
    :goto_42
    return-void

    .line 107
    .end local v0    # "skipFinal":Z
    .restart local v2    # "skipFinal":Z
    :catchall_43
    move-exception v0

    if-nez v2, :cond_4e

    .line 108
    monitor-enter p0

    .line 109
    :try_start_47
    iput-boolean v3, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->emitting:Z

    .line 110
    monitor-exit p0

    goto :goto_4e

    :catchall_4b
    move-exception v0

    monitor-exit p0
    :try_end_4d
    .catchall {:try_start_47 .. :try_end_4d} :catchall_4b

    throw v0

    .line 112
    :cond_4e
    :goto_4e
    throw v0

    .line 91
    .end local v2    # "skipFinal":Z
    :catchall_4f
    move-exception v0

    :try_start_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v0

    .line 83
    :cond_52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n > 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public request(J)V
    .registers 11
    .param p1, "n"    # J

    .line 43
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_51

    .line 46
    cmp-long v2, p1, v0

    if-nez v2, :cond_b

    .line 47
    return-void

    .line 49
    :cond_b
    monitor-enter p0

    .line 50
    :try_start_c
    iget-boolean v2, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->emitting:Z

    if-eqz v2, :cond_17

    .line 51
    iget-wide v0, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->missedRequested:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->missedRequested:J

    .line 52
    monitor-exit p0

    return-void

    .line 54
    :cond_17
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->emitting:Z

    .line 55
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_4e

    .line 56
    const/4 v2, 0x0

    .line 58
    .local v2, "skipFinal":Z
    const/4 v3, 0x0

    :try_start_1d
    iget-wide v4, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->requested:J

    .line 59
    .local v4, "r":J
    add-long v6, v4, p1

    .line 60
    .local v6, "u":J
    cmp-long v0, v6, v0

    if-gez v0, :cond_2a

    .line 61
    const-wide v6, 0x7fffffffffffffffL

    .line 63
    :cond_2a
    iput-wide v6, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->requested:J

    .line 65
    iget-object v0, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->currentProducer:Lcom/tds/common/reactor/Producer;

    .line 66
    .local v0, "p":Lcom/tds/common/reactor/Producer;
    if-eqz v0, :cond_33

    .line 67
    invoke-interface {v0, p1, p2}, Lcom/tds/common/reactor/Producer;->request(J)V

    .line 70
    :cond_33
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->emitLoop()V
    :try_end_36
    .catchall {:try_start_1d .. :try_end_36} :catchall_42

    .line 71
    const/4 v0, 0x1

    .line 73
    .end local v2    # "skipFinal":Z
    .end local v4    # "r":J
    .end local v6    # "u":J
    .local v0, "skipFinal":Z
    if-nez v0, :cond_41

    .line 74
    monitor-enter p0

    .line 75
    :try_start_3a
    iput-boolean v3, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->emitting:Z

    .line 76
    monitor-exit p0

    goto :goto_41

    :catchall_3e
    move-exception v1

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_3e

    throw v1

    .line 79
    :cond_41
    :goto_41
    return-void

    .line 73
    .end local v0    # "skipFinal":Z
    .restart local v2    # "skipFinal":Z
    :catchall_42
    move-exception v0

    if-nez v2, :cond_4d

    .line 74
    monitor-enter p0

    .line 75
    :try_start_46
    iput-boolean v3, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->emitting:Z

    .line 76
    monitor-exit p0

    goto :goto_4d

    :catchall_4a
    move-exception v0

    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_46 .. :try_end_4c} :catchall_4a

    throw v0

    .line 78
    :cond_4d
    :goto_4d
    throw v0

    .line 55
    .end local v2    # "skipFinal":Z
    :catchall_4e
    move-exception v0

    :try_start_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw v0

    .line 44
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n >= 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProducer(Lcom/tds/common/reactor/Producer;)V
    .registers 6
    .param p1, "newProducer"    # Lcom/tds/common/reactor/Producer;

    .line 116
    monitor-enter p0

    .line 117
    :try_start_1
    iget-boolean v0, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->emitting:Z

    if-eqz v0, :cond_f

    .line 118
    if-nez p1, :cond_a

    sget-object v0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->NULL_PRODUCER:Lcom/tds/common/reactor/Producer;

    goto :goto_b

    :cond_a
    move-object v0, p1

    :goto_b
    iput-object v0, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->missedProducer:Lcom/tds/common/reactor/Producer;

    .line 119
    monitor-exit p0

    return-void

    .line 121
    :cond_f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->emitting:Z

    .line 122
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_39

    .line 123
    const/4 v0, 0x0

    .line 125
    .local v0, "skipFinal":Z
    const/4 v1, 0x0

    :try_start_15
    iput-object p1, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->currentProducer:Lcom/tds/common/reactor/Producer;

    .line 126
    if-eqz p1, :cond_1e

    .line 127
    iget-wide v2, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->requested:J

    invoke-interface {p1, v2, v3}, Lcom/tds/common/reactor/Producer;->request(J)V

    .line 130
    :cond_1e
    invoke-virtual {p0}, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->emitLoop()V
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_2d

    .line 131
    const/4 v0, 0x1

    .line 133
    if-nez v0, :cond_2c

    .line 134
    monitor-enter p0

    .line 135
    :try_start_25
    iput-boolean v1, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->emitting:Z

    .line 136
    monitor-exit p0

    goto :goto_2c

    :catchall_29
    move-exception v1

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_25 .. :try_end_2b} :catchall_29

    throw v1

    .line 139
    :cond_2c
    :goto_2c
    return-void

    .line 133
    :catchall_2d
    move-exception v2

    if-nez v0, :cond_38

    .line 134
    monitor-enter p0

    .line 135
    :try_start_31
    iput-boolean v1, p0, Lcom/tds/common/reactor/internal/producers/ProducerArbiter;->emitting:Z

    .line 136
    monitor-exit p0

    goto :goto_38

    :catchall_35
    move-exception v1

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_35

    throw v1

    .line 138
    :cond_38
    :goto_38
    throw v2

    .line 122
    .end local v0    # "skipFinal":Z
    :catchall_39
    move-exception v0

    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0
.end method
